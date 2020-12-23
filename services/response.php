<?php

class Response
{
    final public static function send($response): void
    {
        echo json_encode(
            [
                'data' => $response
            ],
            JSON_THROW_ON_ERROR
        );
    }

    final public static function notFound(array $arg = []): void
    {
        header('HTTP/1.0 404 Not Found');
        static::send(
            array_merge(
                [
                    'error' => 'File not found!'
                ],
                $arg
            )
        );
    }

    final public static function error500($msg): void {
        static::send($msg);
    }
}
