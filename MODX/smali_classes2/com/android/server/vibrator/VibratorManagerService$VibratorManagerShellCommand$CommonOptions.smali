.class public final Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final background:Z

.field public final description:Ljava/lang/String;

.field public final force:Z

.field public final pkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->force:Z

    .line 7
    .line 8
    const-string v2, "Shell command"

    .line 9
    .line 10
    iput-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->description:Ljava/lang/String;

    .line 11
    .line 12
    iput-boolean v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->background:Z

    .line 13
    .line 14
    const-string v2, "com.android.shell"

    .line 15
    .line 16
    iput-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->pkgName:Ljava/lang/String;

    .line 17
    .line 18
    :goto_0
    invoke-virtual {p1}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-eqz v2, :cond_4

    .line 23
    .line 24
    const/4 v3, -0x1

    .line 25
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    sparse-switch v4, :sswitch_data_0

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :sswitch_0
    const-string v4, "-p"

    .line 34
    .line 35
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_0

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    const/4 v3, 0x3

    .line 43
    goto :goto_1

    .line 44
    :sswitch_1
    const-string v4, "-f"

    .line 45
    .line 46
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-nez v2, :cond_1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    const/4 v3, 0x2

    .line 54
    goto :goto_1

    .line 55
    :sswitch_2
    const-string v4, "-d"

    .line 56
    .line 57
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-nez v2, :cond_2

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    move v3, v0

    .line 65
    goto :goto_1

    .line 66
    :sswitch_3
    const-string v4, "-B"

    .line 67
    .line 68
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-nez v2, :cond_3

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    move v3, v1

    .line 76
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    iput-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->pkgName:Ljava/lang/String;

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    iput-boolean v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->force:Z

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    iput-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->description:Ljava/lang/String;

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    iput-boolean v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->background:Z

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_4
    return-void

    .line 113
    :sswitch_data_0
    .sparse-switch
        0x5b5 -> :sswitch_3
        0x5d7 -> :sswitch_2
        0x5d9 -> :sswitch_1
        0x5e3 -> :sswitch_0
    .end sparse-switch

    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
