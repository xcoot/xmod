.class public final Lcom/android/server/wm/TaskPersister;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/PersisterQueue$Listener;


# instance fields
.field public final mIoLock:Ljava/lang/Object;

.field public final mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

.field public final mRecentTasks:Lcom/android/server/wm/RecentTasks;

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mTaskIdsDir:Ljava/io/File;

.field public final mTaskIdsInFile:Landroid/util/SparseArray;

.field public final mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public final mTmpTaskIds:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mIoLock:Ljava/lang/Object;

    .line 23
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mTmpTaskIds:Landroid/util/ArraySet;

    .line 24
    iput-object p1, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsDir:Ljava/io/File;

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/android/server/wm/TaskPersister;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 26
    iput-object p1, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 27
    iput-object p1, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 28
    new-instance p1, Lcom/android/server/wm/PersisterQueue;

    invoke-direct {p1}, Lcom/android/server/wm/PersisterQueue;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 29
    iget-object p1, p1, Lcom/android/server/wm/PersisterQueue;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/RecentTasks;Lcom/android/server/wm/PersisterQueue;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mIoLock:Ljava/lang/Object;

    .line 4
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mTmpTaskIds:Landroid/util/ArraySet;

    .line 5
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "recent_images"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "TaskPersister"

    if-eqz v1, :cond_1

    .line 7
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Failure deleting legacy images directory: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "recent_tasks"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_3

    .line 12
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Failure deleting legacy tasks directory: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_3
    new-instance p1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "system_de"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsDir:Ljava/io/File;

    .line 14
    iput-object p2, p0, Lcom/android/server/wm/TaskPersister;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 15
    iput-object p3, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 16
    iput-object p4, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 17
    iput-object p5, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 18
    iget-object p1, p5, Lcom/android/server/wm/PersisterQueue;->mListeners:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static fileToString(Ljava/io/File;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    .line 6
    .line 7
    new-instance v2, Ljava/io/FileReader;

    .line 8
    .line 9
    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuffer;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    long-to-int v3, v3

    .line 22
    mul-int/lit8 v3, v3, 0x2

    .line 23
    .line 24
    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    new-instance v4, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    return-object p0

    .line 60
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v1, "Couldn\'t read file "

    .line 63
    .line 64
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    const-string v0, "TaskPersister"

    .line 79
    .line 80
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    const/4 p0, 0x0

    .line 84
    return-object p0
.end method

.method public static loadTasksForUser(I)Lcom/android/server/wm/TaskPersister$RecentTaskFiles;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/io/File;

    .line 7
    .line 8
    invoke-static {p0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string/jumbo v2, "recent_tasks"

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const/4 v2, 0x0

    .line 23
    const-string v3, "TaskPersister"

    .line 24
    .line 25
    if-nez p0, :cond_0

    .line 26
    .line 27
    new-instance p0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v4, "loadTasksForUser: Unable to list files from "

    .line 30
    .line 31
    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v4, " exists="

    .line 38
    .line 39
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    new-instance p0, Lcom/android/server/wm/TaskPersister$RecentTaskFiles;

    .line 57
    .line 58
    new-array v1, v2, [Ljava/io/File;

    .line 59
    .line 60
    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/TaskPersister$RecentTaskFiles;-><init>([Ljava/io/File;Ljava/util/ArrayList;)V

    .line 61
    .line 62
    .line 63
    return-object p0

    .line 64
    :cond_0
    array-length v1, p0

    .line 65
    move v4, v2

    .line 66
    :goto_0
    if-ge v4, v1, :cond_2

    .line 67
    .line 68
    aget-object v5, p0, v4

    .line 69
    .line 70
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    const-string v7, "_task.xml"

    .line 75
    .line 76
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    if-nez v6, :cond_1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    add-int/lit8 v7, v7, -0x9

    .line 96
    .line 97
    invoke-virtual {v6, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 105
    :try_start_1
    new-instance v7, Lcom/android/server/wm/TaskPersister$RecentTaskFile;

    .line 106
    .line 107
    invoke-direct {v7, v5, v6}, Lcom/android/server/wm/TaskPersister$RecentTaskFile;-><init>(Ljava/io/File;I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :catch_0
    move-exception v6

    .line 115
    new-instance v7, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string v8, "Failed to read file: "

    .line 118
    .line 119
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-static {v5}, Lcom/android/server/wm/TaskPersister;->fileToString(Ljava/io/File;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    invoke-static {v3, v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    .line 135
    .line 136
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :catch_1
    move-exception v5

    .line 141
    const-string v6, "Unexpected task file name"

    .line 142
    .line 143
    invoke-static {v3, v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    .line 145
    .line 146
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_2
    new-instance v1, Lcom/android/server/wm/TaskPersister$RecentTaskFiles;

    .line 150
    .line 151
    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/TaskPersister$RecentTaskFiles;-><init>([Ljava/io/File;Ljava/util/ArrayList;)V

    .line 152
    .line 153
    .line 154
    return-object v1
.end method

.method public static removeObsoleteFiles(Landroid/util/ArraySet;[Ljava/io/File;)V
    .locals 6

    .line 1
    const-string v0, "TaskPersister"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const-string p0, "File error accessing recents directory (directory doesn\'t exist?)."

    .line 6
    .line 7
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    move v2, v1

    .line 13
    :goto_0
    array-length v3, p1

    .line 14
    if-ge v2, v3, :cond_2

    .line 15
    .line 16
    aget-object v3, p1, v2

    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    const/16 v5, 0x5f

    .line 23
    .line 24
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-lez v5, :cond_1

    .line 29
    .line 30
    :try_start_0
    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {p0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-nez v4, :cond_1

    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string/jumbo v5, "removeObsoleteFiles: Can\'t parse file="

    .line 55
    .line 56
    .line 57
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-static {v0, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 75
    .line 76
    .line 77
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    return-void
.end method

.method public static taskIdToTask(Ljava/util/ArrayList;I)Lcom/android/server/wm/Task;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-gez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/lit8 v1, v1, -0x1

    .line 10
    .line 11
    :goto_0
    if-ltz v1, :cond_2

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/android/server/wm/Task;

    .line 18
    .line 19
    iget v3, v2, Lcom/android/server/wm/Task;->mTaskId:I

    .line 20
    .line 21
    if-ne v3, p1, :cond_1

    .line 22
    .line 23
    return-object v2

    .line 24
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    const-string p0, "Restore affiliation error looking for taskId="

    .line 28
    .line 29
    const-string v1, "TaskPersister"

    .line 30
    .line 31
    invoke-static {p1, p0, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method


# virtual methods
.method public final getUserPersistedTaskIdsFile(I)Ljava/io/File;
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsDir:Ljava/io/File;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-nez p0, :cond_0

    .line 23
    .line 24
    new-instance p0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string p1, "Error while creating user directory: "

    .line 27
    .line 28
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const-string p1, "TaskPersister"

    .line 39
    .line 40
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    :cond_0
    new-instance p0, Ljava/io/File;

    .line 44
    .line 45
    const-string/jumbo p1, "persisted_taskIds.txt"

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-object p0
.end method

.method public final onPreProcessItem(Z)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_7

    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/server/wm/TaskPersister;->mTmpTaskIds:Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 14
    .line 15
    .line 16
    monitor-enter p1

    .line 17
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/wm/TaskPersister;->mTmpTaskIds:Landroid/util/ArraySet;

    .line 20
    .line 21
    iget-object v3, v1, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    move v4, v0

    .line 28
    :goto_0
    if-ge v4, v3, :cond_3

    .line 29
    .line 30
    iget-object v5, v1, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    check-cast v5, Lcom/android/server/wm/Task;

    .line 37
    .line 38
    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    iget-boolean v7, v5, Lcom/android/server/wm/Task;->isPersistable:Z

    .line 43
    .line 44
    if-nez v7, :cond_0

    .line 45
    .line 46
    iget-boolean v7, v5, Lcom/android/server/wm/Task;->inRecents:Z

    .line 47
    .line 48
    if-eqz v7, :cond_2

    .line 49
    .line 50
    :cond_0
    if-eqz v6, :cond_1

    .line 51
    .line 52
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    if-nez v6, :cond_2

    .line 57
    .line 58
    :cond_1
    iget v5, v5, Lcom/android/server/wm/Task;->mTaskId:I

    .line 59
    .line 60
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 71
    .line 72
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 73
    .line 74
    iget-object v2, p0, Lcom/android/server/wm/TaskPersister;->mTmpTaskIds:Landroid/util/ArraySet;

    .line 75
    .line 76
    iget-object v3, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 77
    .line 78
    invoke-virtual {v3}, Lcom/android/server/wm/RecentTasks;->usersWithRecentsLoadedLocked()[I

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->removeObsoleteTaskFiles(Landroid/util/ArraySet;[I)V

    .line 83
    .line 84
    .line 85
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 86
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lcom/android/server/wm/TaskPersister;->mTmpTaskIds:Landroid/util/ArraySet;

    .line 90
    .line 91
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 92
    .line 93
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 94
    .line 95
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 96
    .line 97
    .line 98
    monitor-enter v1

    .line 99
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 100
    .line 101
    invoke-virtual {v2}, Lcom/android/server/wm/RecentTasks;->usersWithRecentsLoadedLocked()[I

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 106
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 107
    .line 108
    .line 109
    array-length v1, v2

    .line 110
    move v3, v0

    .line 111
    :goto_1
    if-ge v3, v1, :cond_4

    .line 112
    .line 113
    aget v4, v2, v3

    .line 114
    .line 115
    new-instance v5, Ljava/io/File;

    .line 116
    .line 117
    invoke-static {v4}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    const-string/jumbo v7, "recent_images"

    .line 122
    .line 123
    .line 124
    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    invoke-static {p1, v5}, Lcom/android/server/wm/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;[Ljava/io/File;)V

    .line 132
    .line 133
    .line 134
    new-instance v5, Ljava/io/File;

    .line 135
    .line 136
    invoke-static {v4}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    const-string/jumbo v6, "recent_tasks"

    .line 141
    .line 142
    .line 143
    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    invoke-static {p1, v4}, Lcom/android/server/wm/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;[Ljava/io/File;)V

    .line 151
    .line 152
    .line 153
    add-int/lit8 v3, v3, 0x1

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_4
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_DEDICATED_MEMORY:Z

    .line 157
    .line 158
    if-eqz p1, :cond_7

    .line 159
    .line 160
    iget-object p1, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 161
    .line 162
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 163
    .line 164
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 165
    .line 166
    .line 167
    monitor-enter p1

    .line 168
    :try_start_2
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 169
    .line 170
    invoke-virtual {v1}, Lcom/android/server/wm/RecentTasks;->usersWithRecentsLoadedLocked()[I

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 176
    .line 177
    .line 178
    array-length p1, v1

    .line 179
    move v2, v0

    .line 180
    :goto_2
    if-ge v2, p1, :cond_7

    .line 181
    .line 182
    aget v3, v1, v2

    .line 183
    .line 184
    iget-object v4, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 185
    .line 186
    iget-object v4, v4, Lcom/android/server/wm/RecentTasks;->mUserToProcs:Lcom/android/server/wm/RecentTasks$UserToProcMap;

    .line 187
    .line 188
    invoke-virtual {v4, v3}, Lcom/android/server/wm/RecentTasks$UserToProcMap;->get(I)Ljava/util/HashMap;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    if-gtz v4, :cond_6

    .line 197
    .line 198
    new-instance v4, Ljava/io/File;

    .line 199
    .line 200
    invoke-static {v3}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    const-string v5, "dedicated_tasks"

    .line 205
    .line 206
    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    if-nez v3, :cond_5

    .line 214
    .line 215
    const-string v3, "TaskPersister"

    .line 216
    .line 217
    const-string v4, "File error accessing recents directory (directory doesn\'t exist?)."

    .line 218
    .line 219
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    goto :goto_4

    .line 223
    :cond_5
    move v4, v0

    .line 224
    :goto_3
    array-length v5, v3

    .line 225
    if-ge v4, v5, :cond_6

    .line 226
    .line 227
    aget-object v5, v3, v4

    .line 228
    .line 229
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 230
    .line 231
    .line 232
    add-int/lit8 v4, v4, 0x1

    .line 233
    .line 234
    goto :goto_3

    .line 235
    :cond_6
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 236
    .line 237
    goto :goto_2

    .line 238
    :catchall_0
    move-exception p0

    .line 239
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 240
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 241
    .line 242
    .line 243
    throw p0

    .line 244
    :catchall_1
    move-exception p0

    .line 245
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 246
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 247
    .line 248
    .line 249
    throw p0

    .line 250
    :catchall_2
    move-exception p0

    .line 251
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 252
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 253
    .line 254
    .line 255
    throw p0

    .line 256
    :cond_7
    new-instance p1, Landroid/util/SparseArray;

    .line 257
    .line 258
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 259
    .line 260
    .line 261
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 262
    .line 263
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 264
    .line 265
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 266
    .line 267
    .line 268
    monitor-enter v1

    .line 269
    :try_start_6
    iget-object v2, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 270
    .line 271
    invoke-virtual {v2}, Lcom/android/server/wm/RecentTasks;->usersWithRecentsLoadedLocked()[I

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    array-length v3, v2

    .line 276
    move v4, v0

    .line 277
    :goto_5
    if-ge v4, v3, :cond_a

    .line 278
    .line 279
    aget v5, v2, v4

    .line 280
    .line 281
    iget-object v6, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 282
    .line 283
    iget-object v6, v6, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    .line 284
    .line 285
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v6

    .line 289
    check-cast v6, Landroid/util/SparseBooleanArray;

    .line 290
    .line 291
    if-nez v6, :cond_8

    .line 292
    .line 293
    new-instance v6, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    const-string v7, "Loaded user without loaded tasks, userId="

    .line 296
    .line 297
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v6

    .line 307
    const-string v7, "ActivityTaskManager"

    .line 308
    .line 309
    invoke-static {v7, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    .line 311
    .line 312
    new-instance v6, Landroid/util/SparseBooleanArray;

    .line 313
    .line 314
    invoke-direct {v6}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 315
    .line 316
    .line 317
    :cond_8
    iget-object v7, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    .line 318
    .line 319
    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v7

    .line 323
    check-cast v7, Landroid/util/SparseBooleanArray;

    .line 324
    .line 325
    if-eqz v7, :cond_9

    .line 326
    .line 327
    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->equals(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    move-result v7

    .line 331
    if-eqz v7, :cond_9

    .line 332
    .line 333
    goto :goto_6

    .line 334
    :catchall_3
    move-exception p0

    .line 335
    goto :goto_8

    .line 336
    :cond_9
    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    .line 337
    .line 338
    .line 339
    move-result-object v6

    .line 340
    iget-object v7, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    .line 341
    .line 342
    invoke-virtual {v7, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {p1, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 346
    .line 347
    .line 348
    :goto_6
    add-int/lit8 v4, v4, 0x1

    .line 349
    .line 350
    goto :goto_5

    .line 351
    :cond_a
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 352
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 353
    .line 354
    .line 355
    :goto_7
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 356
    .line 357
    .line 358
    move-result v1

    .line 359
    if-ge v0, v1, :cond_b

    .line 360
    .line 361
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    check-cast v1, Landroid/util/SparseBooleanArray;

    .line 366
    .line 367
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 368
    .line 369
    .line 370
    move-result v2

    .line 371
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/TaskPersister;->writePersistedTaskIdsForUser(Landroid/util/SparseBooleanArray;I)V

    .line 372
    .line 373
    .line 374
    add-int/lit8 v0, v0, 0x1

    .line 375
    .line 376
    goto :goto_7

    .line 377
    :cond_b
    return-void

    .line 378
    :goto_8
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 379
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 380
    .line 381
    .line 382
    throw p0
.end method

.method public final readPersistedTaskIdsFromFileForUser(I)Landroid/util/SparseBooleanArray;
    .locals 7

    .line 1
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mIoLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    .line 11
    .line 12
    new-instance v4, Ljava/io/FileReader;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskPersister;->getUserPersistedTaskIdsFile(I)Ljava/io/File;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 22
    .line 23
    .line 24
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    if-eqz p0, :cond_1

    .line 29
    .line 30
    const-string v2, "\\s+"

    .line 31
    .line 32
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    array-length v2, p0

    .line 37
    const/4 v4, 0x0

    .line 38
    :goto_0
    if-ge v4, v2, :cond_0

    .line 39
    .line 40
    aget-object v5, p0, v4

    .line 41
    .line 42
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    const/4 v6, 0x1

    .line 47
    invoke-virtual {v0, v5, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    .line 49
    .line 50
    add-int/lit8 v4, v4, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    move-object v2, v3

    .line 55
    goto :goto_3

    .line 56
    :catch_0
    move-exception p0

    .line 57
    move-object v2, v3

    .line 58
    goto :goto_1

    .line 59
    :catch_1
    move-object v2, v3

    .line 60
    goto :goto_2

    .line 61
    :cond_1
    :try_start_2
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 62
    .line 63
    .line 64
    goto :goto_4

    .line 65
    :catchall_1
    move-exception p0

    .line 66
    goto :goto_5

    .line 67
    :catchall_2
    move-exception p0

    .line 68
    goto :goto_3

    .line 69
    :catch_2
    move-exception p0

    .line 70
    :goto_1
    :try_start_3
    const-string v3, "TaskPersister"

    .line 71
    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v5, "Error while reading taskIds file for user "

    .line 78
    .line 79
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-static {v3, v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 90
    .line 91
    .line 92
    :catch_3
    :goto_2
    :try_start_4
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 93
    .line 94
    .line 95
    goto :goto_4

    .line 96
    :goto_3
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 97
    .line 98
    .line 99
    throw p0

    .line 100
    :goto_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 101
    const-string p0, "TaskPersister"

    .line 102
    .line 103
    const-string v1, "Loaded persisted task ids for user "

    .line 104
    .line 105
    invoke-static {p1, v1, p0}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    return-object v0

    .line 109
    :goto_5
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 110
    throw p0
.end method

.method public final saveDedicatedProcessName(ILjava/util/HashMap;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 5
    .line 6
    new-instance v2, Lcom/android/server/wm/TaskPersister$DedicatedProcessWriteQueueItem;

    .line 7
    .line 8
    iget-object v3, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 9
    .line 10
    invoke-direct {v2, p2, v3, p1}, Lcom/android/server/wm/TaskPersister$DedicatedProcessWriteQueueItem;-><init>(Ljava/util/HashMap;Lcom/android/server/wm/ActivityTaskManagerService;I)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    .line 15
    .line 16
    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    iget-object p0, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/wm/PersisterQueue;->yieldIfQueueTooDeep()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw p0
.end method

.method public writePersistedTaskIdsForUser(Landroid/util/SparseBooleanArray;I)V
    .locals 4

    .line 1
    if-gez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/wm/TaskPersister;->getUserPersistedTaskIdsFile(I)Ljava/io/File;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object p0, p0, Lcom/android/server/wm/TaskPersister;->mIoLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter p0

    .line 11
    const/4 v1, 0x0

    .line 12
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    .line 13
    .line 14
    new-instance v3, Ljava/io/FileWriter;

    .line 15
    .line 16
    invoke-direct {v3, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-ge v0, v1, :cond_2

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    move-object v1, v2

    .line 52
    goto :goto_4

    .line 53
    :catch_0
    move-exception p1

    .line 54
    move-object v1, v2

    .line 55
    goto :goto_2

    .line 56
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    :try_start_2
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 60
    .line 61
    .line 62
    goto :goto_3

    .line 63
    :catchall_1
    move-exception p1

    .line 64
    goto :goto_5

    .line 65
    :catchall_2
    move-exception p1

    .line 66
    goto :goto_4

    .line 67
    :catch_1
    move-exception p1

    .line 68
    :goto_2
    :try_start_3
    const-string v0, "TaskPersister"

    .line 69
    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v3, "Error while writing taskIds file for user "

    .line 76
    .line 77
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-static {v0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 88
    .line 89
    .line 90
    :try_start_4
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 91
    .line 92
    .line 93
    :goto_3
    monitor-exit p0

    .line 94
    return-void

    .line 95
    :goto_4
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 96
    .line 97
    .line 98
    throw p1

    .line 99
    :goto_5
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 100
    throw p1
.end method
