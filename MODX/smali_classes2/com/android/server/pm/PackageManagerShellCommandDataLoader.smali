.class public Lcom/android/server/pm/PackageManagerShellCommandDataLoader;
.super Landroid/service/dataloader/DataLoaderService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ARGS_DELIM:C = '&'

.field public static final CLASS:Ljava/lang/String;

.field public static final INVALID_SHELL_COMMAND_ID:I = -0x1

.field public static final PACKAGE:Ljava/lang/String; = "android"

.field public static final SHELL_COMMAND_ID_PREFIX:Ljava/lang/String; = "shellCommandId="

.field public static final STDIN_PATH:Ljava/lang/String; = "-"

.field public static final TAG:Ljava/lang/String; = "PackageManagerShellCommandDataLoader"

.field public static final TOO_MANY_PENDING_SHELL_COMMANDS:I = 0xa

.field public static final sRandom:Ljava/security/SecureRandom;

.field public static final sShellCommands:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->CLASS:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v0, Ljava/security/SecureRandom;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->sRandom:Ljava/security/SecureRandom;

    .line 15
    .line 16
    new-instance v0, Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->sShellCommands:Landroid/util/SparseArray;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/service/dataloader/DataLoaderService;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static extractShellCommandId(Ljava/lang/String;)I
    .locals 4

    .line 1
    const-string/jumbo v0, "shellCommandId="

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, -0x1

    .line 9
    const-string v2, "PackageManagerShellCommandDataLoader"

    .line 10
    .line 11
    if-gez v0, :cond_0

    .line 12
    .line 13
    const-string p0, "Missing shell command id param."

    .line 14
    .line 15
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return v1

    .line 19
    :cond_0
    add-int/lit8 v0, v0, 0xf

    .line 20
    .line 21
    const/16 v3, 0x26

    .line 22
    .line 23
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(II)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-gez v3, :cond_1

    .line 28
    .line 29
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    return p0

    .line 38
    :catch_0
    move-exception p0

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    return p0

    .line 49
    :goto_0
    const-string v0, "Incorrect shell command id format."

    .line 50
    .line 51
    invoke-static {v2, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    .line 53
    .line 54
    return v1
.end method

.method public static getDataLoaderParamsArgs(Landroid/os/ShellCommand;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->nativeInitialize()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->sShellCommands:Landroid/util/SparseArray;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/lit8 v1, v1, -0x1

    .line 12
    .line 13
    :goto_0
    if-ltz v1, :cond_1

    .line 14
    .line 15
    sget-object v2, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->sShellCommands:Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    if-nez v3, :cond_0

    .line 28
    .line 29
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_2

    .line 35
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    sget-object v1, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->sShellCommands:Landroid/util/SparseArray;

    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    const/16 v3, 0xa

    .line 45
    .line 46
    if-le v2, v3, :cond_2

    .line 47
    .line 48
    const-string v2, "PackageManagerShellCommandDataLoader"

    .line 49
    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v4, "Too many pending shell commands: "

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    :cond_2
    sget-object v1, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->sRandom:Ljava/security/SecureRandom;

    .line 75
    .line 76
    const v2, 0x7ffffffe

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->nextInt(I)I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    add-int/lit8 v1, v1, 0x1

    .line 84
    .line 85
    sget-object v2, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->sShellCommands:Landroid/util/SparseArray;

    .line 86
    .line 87
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->contains(I)Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-nez v3, :cond_2

    .line 92
    .line 93
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 94
    .line 95
    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    const-string/jumbo p0, "shellCommandId="

    .line 103
    .line 104
    .line 105
    invoke-static {v1, p0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    return-object p0

    .line 110
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    throw p0
.end method

.method public static getIncrementalDataLoaderParams(Landroid/os/ShellCommand;)Landroid/content/pm/DataLoaderParams;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ComponentName;

    .line 2
    .line 3
    const-string v1, "android"

    .line 4
    .line 5
    sget-object v2, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->CLASS:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->getDataLoaderParamsArgs(Landroid/os/ShellCommand;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {v0, p0}, Landroid/content/pm/DataLoaderParams;->forIncremental(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/pm/DataLoaderParams;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static getLocalFile(Landroid/os/ShellCommand;Ljava/lang/String;)I
    .locals 1

    .line 1
    const-string/jumbo v0, "r"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const/4 p0, -0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    :goto_0
    return p0
.end method

.method public static getLocalFilePFD(Landroid/os/ShellCommand;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1

    .line 1
    const-string/jumbo v0, "r"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public static getStdIn(Landroid/os/ShellCommand;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->getStdInPFD(Landroid/os/ShellCommand;)Landroid/os/ParcelFileDescriptor;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, -0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    :goto_0
    return p0
.end method

.method public static getStdInPFD(Landroid/os/ShellCommand;)Landroid/os/ParcelFileDescriptor;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getInFileDescriptor()Ljava/io/FileDescriptor;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    .line 6
    .line 7
    .line 8
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    const-string v0, "PackageManagerShellCommandDataLoader"

    .line 12
    .line 13
    const-string v1, "Exception while obtaining STDIN fd"

    .line 14
    .line 15
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return-object p0
.end method

.method public static getStreamingDataLoaderParams(Landroid/os/ShellCommand;)Landroid/content/pm/DataLoaderParams;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ComponentName;

    .line 2
    .line 3
    const-string v1, "android"

    .line 4
    .line 5
    sget-object v2, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->CLASS:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->getDataLoaderParamsArgs(Landroid/os/ShellCommand;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {v0, p0}, Landroid/content/pm/DataLoaderParams;->forStreaming(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/pm/DataLoaderParams;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static lookupShellCommand(Ljava/lang/String;)Landroid/os/ShellCommand;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->extractShellCommandId(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, -0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    sget-object v0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->sShellCommands:Landroid/util/SparseArray;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 18
    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    move-object v1, p0

    .line 27
    check-cast v1, Landroid/os/ShellCommand;

    .line 28
    .line 29
    :cond_1
    return-object v1

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw p0
.end method

.method private static native nativeInitialize()V
.end method


# virtual methods
.method public final onCreateDataLoader(Landroid/content/pm/DataLoaderParams;)Landroid/service/dataloader/DataLoaderService$DataLoader;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/pm/DataLoaderParams;->getType()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 p1, 0x1

    .line 6
    const/4 v0, 0x0

    .line 7
    if-ne p0, p1, :cond_0

    .line 8
    .line 9
    new-instance p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$DataLoader;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$DataLoader;->mParams:Landroid/content/pm/DataLoaderParams;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$DataLoader;->mConnector:Landroid/service/dataloader/DataLoaderService$FileSystemConnector;

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_0
    return-object v0
.end method
