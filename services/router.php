<?php

class Router
{
    final public function parse(): void
    {
        $url = $this->getURL();
        if ($url === '') {
            include 'home.php';
        } else {
            $this->route($url);
        }
    }

    private function route(string $url): void
    {
        $routes = Routes::routesArray();
        $matchingKey = null;
        $matchingArray = null;
        $matchingURLArray = null;
        $matchingArgs = [];

        foreach ($routes as $key => $array) {
            if (isset($array[$_SERVER['REQUEST_METHOD']])) {
                $arrayByMethod = $array[$_SERVER['REQUEST_METHOD']];
                $urlArray = explode('/', $url);
                $keyArray = explode('/', $key);
                if (count($urlArray) === count($keyArray)) {
                    $match = false;
                    foreach ($urlArray as $keyNumber => $valueStr) {
                        if ($valueStr === $keyArray[$keyNumber]) {
                            $match = true;
                        } else if (!isset($arrayByMethod['args']) && !isset($arrayByMethod['argsTypes'])) {
                            $match = false;
                        } else {
                            $arg = array_shift($arrayByMethod['args']);
                            $type = array_shift($arrayByMethod['argsTypes']);
                            $functionName = 'is_' . $type;
                            if (
                                $arg === $keyArray[$keyNumber]
                                &&
                                $functionName($valueStr)
                            ) {
                                $matchingArgs[] = $valueStr;
                                $match = true;
                            } else {
                                $match = false;
                            }
                        }
                    }
                    if ($match === true) {
                        $matchingKey = $key;
                        $matchingArray = $arrayByMethod;
                        $matchingURLArray = $urlArray;
                    }
                }
            }
        }

        if ($matchingKey !== null && $matchingArray !== null && $matchingURLArray !== null) {
            include __BASE__ . $matchingArray['path'];
            $refl = new ReflectionClass($matchingArray['class']);
            $instance = $refl->newInstance();
            $instance->{$matchingArray['method']}(...$matchingArgs);
        } else {
            // 404 not found
            Response::notFound(
                [
                    'url' => $url
                ]
            );
        }
    }

    private function getURL(): string
    {
        return trim($_SERVER['REQUEST_URI'], '/');
    }
}
