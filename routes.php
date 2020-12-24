<?php

class Routes {
    public static function routesArray(): array
    {
        return [
            'students' => [
                'path' => '/students/entity.php',
                'class' => 'Students',
                'method' => 'entities'
            ],
            'friends' => [
                'path' => '/friends/entities.php',
                'class' => 'Friends',
                'method' => 'entities'
            ],
            'friends/:id' => [
                'path' => '/friends/entity.php',
                'class' => 'Friend',
                'method' => 'entity',
                'args' => [':id'],
                'argsTypes' => ['numeric']
            ],
            'friends/:friendId/family-members' => [
                'path' => '/family-members/entities.php',
                'class' => 'FamilyMembers',
                'method' => 'entities',
                'args' => [':friendId'],
                'argsTypes' => ['numeric']
            ],
            'family-members' => [
                'path' => '/family-member/entities.php',
                'class' => 'FamilyMembers',
                'method' => 'entities',
            ],
            'family-members/:FamilyMemberId' => [
                'path' => '/family-member/entity.php',
                'class' => 'FamilyMember',
                'method' => 'entity',
                'args' => [':FamilyMemberId'],
                'argsTypes' => ['numeric']
            ]
        ];
    }
}