<?php

namespace App\DataFixtures;


use App\Entity\Comment;
use App\Entity\Conference;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;

class AppFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    {
        $amsterdam = new Conference();
        $amsterdam->setCity('Amsterdam');
        $amsterdam->setYear('2019');
        $amsterdam->setIsInternational(true);
        $manager->persist($amsterdam);

        $paris = new Conference();
        $paris->setCity('Paris');
        $paris->setYear('2020');
        $paris->setIsInternational(false);
        $manager->persist($paris);

        $comment1 = new Comment();
        $comment1->setConference($amsterdam);
        $comment1->setAuthor('Chika');
        $comment1->setEmail('chika@gmail.com');
        $comment1->setText('These days, the field of computer science is super hot! So, I had a wonderful time!');
        $comment1->setState('published');
        $manager->persist($comment1);

        $comment2 = new Comment();
        $comment2->setConference($amsterdam);
        $comment2->setAuthor('Sayaka');
        $comment2->setEmail('sayaka@gmail.com');
        $comment2->setText("I love the poster session of 'Artificial Intelligence can super humans?' because this session told me that AI is not threat but friends");
        $manager->persist($comment2);

        $manager->flush();
    }
}
