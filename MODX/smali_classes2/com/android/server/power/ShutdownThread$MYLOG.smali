.class public abstract Lcom/android/server/power/ShutdownThread$MYLOG;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/android/server/power/ShutdownThread;->wirteLogFileWriter(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    .line 11
    .line 12
    :goto_0
    sget-object p0, Lcom/android/server/power/ShutdownThread;->shutdownDialog:Lcom/android/server/power/shutdown/ShutdownDialog;

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    sget-boolean p0, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_USER:Z

    .line 17
    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const/4 v0, 0x2

    .line 25
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const/4 v0, 0x5

    .line 36
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const/16 v0, 0xb

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    const/16 v0, 0xc

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    const/16 v0, 0xd

    .line 65
    .line 66
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    const/16 v0, 0xe

    .line 75
    .line 76
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    const-string v7, "ShutdownThread"

    .line 85
    .line 86
    move-object v8, p1

    .line 87
    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    const-string p1, "%02d-%02d %02d:%02d:%02d.%03d %s: %s\n"

    .line 92
    .line 93
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    sget-object p1, Lcom/android/server/power/ShutdownThread;->shutdownDialog:Lcom/android/server/power/shutdown/ShutdownDialog;

    .line 98
    .line 99
    iget-object v0, p1, Lcom/android/server/power/shutdown/ShutdownDialog;->logHandler:Landroid/os/Handler;

    .line 100
    .line 101
    if-eqz v0, :cond_0

    .line 102
    .line 103
    iget-object v1, p1, Lcom/android/server/power/shutdown/ShutdownDialog;->mLogView:Landroid/widget/TextView;

    .line 104
    .line 105
    if-eqz v1, :cond_0

    .line 106
    .line 107
    new-instance v1, Lcom/android/server/power/shutdown/ShutdownDialog$$ExternalSyntheticLambda0;

    .line 108
    .line 109
    invoke-direct {v1, p1, p0}, Lcom/android/server/power/shutdown/ShutdownDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/shutdown/ShutdownDialog;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 113
    .line 114
    .line 115
    :cond_0
    return-void
.end method
