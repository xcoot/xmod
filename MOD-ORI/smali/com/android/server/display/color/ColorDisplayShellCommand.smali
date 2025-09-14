.class public final Lcom/android/server/display/color/ColorDisplayShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mService:Lcom/android/server/display/color/ColorDisplayService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/color/ColorDisplayService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayShellCommand;->mService:Lcom/android/server/display/color/ColorDisplayService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getLevel()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string v0, "Error: Required argument LEVEL is unspecified"

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return v1

    .line 18
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    if-ltz v0, :cond_2

    .line 23
    .line 24
    const/16 v2, 0x64

    .line 25
    .line 26
    if-le v0, v2, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return v0

    .line 30
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const-string v0, "Error: LEVEL argument must be an integer between 0 and 100"

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return v1

    .line 40
    :catch_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const-string v0, "Error: LEVEL argument is not an integer"

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return v1
.end method

.method public final onCommand(Ljava/lang/String;)I
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    const/4 v1, -0x1

    .line 10
    const-string/jumbo v2, "set-layer-saturation"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_3

    .line 18
    .line 19
    const-string/jumbo v2, "set-saturation"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    return p0

    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayShellCommand;->getLevel()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-ne p1, v1, :cond_2

    .line 38
    .line 39
    move v0, v1

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayShellCommand;->mService:Lcom/android/server/display/color/ColorDisplayService;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    .line 53
    .line 54
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 55
    .line 56
    .line 57
    :goto_0
    return v0

    .line 58
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayShellCommand;->getLevel()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-ne p1, v1, :cond_4

    .line 63
    .line 64
    :goto_1
    move v0, v1

    .line 65
    goto :goto_3

    .line 66
    :cond_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    .line 71
    .line 72
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    check-cast v4, Landroid/content/pm/PackageManagerInternal;

    .line 77
    .line 78
    invoke-virtual {v4, v2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    const/4 v5, 0x0

    .line 83
    if-nez v4, :cond_5

    .line 84
    .line 85
    move-object v2, v5

    .line 86
    :cond_5
    if-nez v2, :cond_6

    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    const-string p1, "Error: CALLER_PACKAGE must be an installed package name"

    .line 93
    .line 94
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    .line 107
    .line 108
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    if-nez v3, :cond_7

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_7
    move-object v5, v4

    .line 116
    :goto_2
    if-nez v5, :cond_8

    .line 117
    .line 118
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    const-string p1, "Error: TARGET_PACKAGE must be an installed package name"

    .line 123
    .line 124
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_8
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayShellCommand;->mService:Lcom/android/server/display/color/ColorDisplayService;

    .line 129
    .line 130
    invoke-virtual {p0, p1, v2, v5}, Lcom/android/server/display/color/ColorDisplayService;->setAppSaturationLevelInternal(ILjava/lang/String;Ljava/lang/String;)Z

    .line 131
    .line 132
    .line 133
    :goto_3
    return v0
.end method

.method public final onHelp()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string/jumbo v0, "usage: cmd color_display SUBCOMMAND [ARGS]\n    help\n      Shows this message.\n    set-saturation LEVEL\n      Sets the device saturation to the given LEVEL, 0-100 inclusive.\n    set-layer-saturation LEVEL CALLER_PACKAGE TARGET_PACKAGE\n      Sets the saturation LEVEL for all layers of the TARGET_PACKAGE, attributed\n      to the CALLER_PACKAGE. The lowest LEVEL from any CALLER_PACKAGE is applied.\n"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
