import os

# 获取当前用户的目录
user_dir = os.path.expanduser("~")

# 拼接目标文件的路径
file_path = os.path.join(user_dir, "AppData", "Local", "CiscoSpark", "accessories", "current_log.txt")

# 询问用户是否清空目录的所有文件
choice = input("请选择操作：1.清空目录的所有文件；2.打印包含[JABRA]Jabra plug-in version的行\n")

if choice == "1":
    # 清空目录下的所有文件
    for filename in os.listdir(os.path.dirname(file_path)):
        file_path = os.path.join(os.path.dirname(file_path), filename)
        # 删除文件
        os.remove(file_path)
elif choice == "2":
    # 打开文件
    with open(file_path, "r") as f:
        # 遍历文件的每一行
        for line in f:
            # 查找包含[JABRA]Jabra plug-in version的行
            if "[JABRA]Jabra plug-in version" in line:
                # 打印该行
                print(line.strip())
else:
    print("无效的选择")