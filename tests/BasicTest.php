<?php
/**
 * Created by PhpStorm.
 * User: strong
 * Date: 19-8-24
 * Time: 上午7:08
 */

namespace tests;


class BasicTest extends TestCase
{
    public function testBasicFunctions() {
        $this->assertTrue(true);
        $this->assertEquals(2, 1+1);
        $app = new \app\index\controller\Index();
        // 假设 index/index/index 方法返回的字符串中包含 "index"
        $this->assertStringContainsString('index', $app->index());
    }

    public function testThinkPHPStyleTests() {
        // 假设我访问 "/" 会看到 "index"
        $this->visit('/')->see('index');
    }
}