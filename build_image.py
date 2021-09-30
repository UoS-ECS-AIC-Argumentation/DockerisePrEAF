import os


def run(cmd):
    print(cmd)
    os.system(cmd)


def remove_if_exists(path):
    if os.path.exists(path):
        run("rm {}".format(path))


if __name__ == '__main__':
    version_name = input("Version name (0.1.0):")
    run("docker build -t uos/preaf:{} .".format(version_name))

    if input("Would you like to compress the container image (y/n)?") == "y":
        run("rm -rf ./dist")
        run("mkdir ./dist")
        folder_name = "preaf-{}".format(version_name)
        file_name = "{}.tar.gz".format(folder_name)
        run("docker save uos/preaf:{} | gzip > {}".format(version_name, file_name))
        run("mv {file_name} ./dist/{file_name}".format(file_name=file_name))
        os.chdir("./dist")
        run("mkdir {}".format(folder_name))
        run("split -b 21m {file_name} ./{folder_name}/{file_name}.part.".format(file_name=file_name,
                                                                                folder_name=folder_name))

