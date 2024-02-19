/*
  Warnings:

  - You are about to drop the column `role_id` on the `users` table. All the data in the column will be lost.
  - You are about to drop the `permission_role` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `permissions` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `roles` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `permission_role` DROP FOREIGN KEY `permission_role_permission_id_fkey`;

-- DropForeignKey
ALTER TABLE `permission_role` DROP FOREIGN KEY `permission_role_role_id_fkey`;

-- DropForeignKey
ALTER TABLE `users` DROP FOREIGN KEY `users_role_id_fkey`;

-- AlterTable
ALTER TABLE `users` DROP COLUMN `role_id`;

-- DropTable
DROP TABLE `permission_role`;

-- DropTable
DROP TABLE `permissions`;

-- DropTable
DROP TABLE `roles`;
