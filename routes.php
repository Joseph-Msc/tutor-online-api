<?php

class Routes
{
    public static function routesArray(): array
    {
        return [
            'friends' => [
                'GET' => [
                    'path' => '/friends/entities.php',
                    'class' => 'Friends',
                    'method' => 'entities'
                ],
                'POST' => [
                    'path' => '/friends/entity.php',
                    'class' => 'Friend',
                    'method' => 'createEntity'
                ]
            ],
            'friends/:id' => [
                'GET' => [
                    'path' => '/friends/entity.php',
                    'class' => 'Friend',
                    'method' => 'entity',
                    'args' => [':id'],
                    'argsTypes' => ['numeric']
                ],
                'DELETE' => [
                    'path' => '/friends/entity.php',
                    'class' => 'Friend',
                    'method' => 'deleteEntity',
                    'args' => [':id'],
                    'argsTypes' => ['numeric']
                ]
            ],
            'friends/:friendId/family-members' => [
                'GET' => [
                    'path' => '/friends/entities.php',
                    'class' => 'Friends',
                    'method' => 'familyMembers',
                    'args' => [':friendId'],
                    'argsTypes' => ['numeric']
                ]
            ],
            'family-members' => [
                'GET' => [
                    'path' => '/family-members/entities.php',
                    'class' => 'FamilyMembers',
                    'method' => 'entities',
                ]
            ],
            'family-members/:FamilyMemberId' => [
                'GET' => [
                    'path' => '/family-members/entity.php',
                    'class' => 'FamilyMember',
                    'method' => 'entity',
                    'args' => [':FamilyMemberId'],
                    'argsTypes' => ['numeric']
                ]
            ]
        ];
    }
}