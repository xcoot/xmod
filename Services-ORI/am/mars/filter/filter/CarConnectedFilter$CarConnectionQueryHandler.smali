.class public final Lcom/android/server/am/mars/filter/filter/CarConnectedFilter$CarConnectionQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1

    .line 1
    const-string/jumbo p0, "onQueryComplete: "

    .line 2
    .line 3
    .line 4
    const-string p1, "CarConnectedFilter"

    .line 5
    .line 6
    if-nez p3, :cond_0

    .line 7
    .line 8
    :try_start_0
    const-string p0, "Null response from content provider"

    .line 9
    .line 10
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->-$$Nest$smnotifyCarDisconnected()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const-string p2, "CarConnectionState"

    .line 18
    .line 19
    invoke-interface {p3, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-gez p2, :cond_1

    .line 24
    .line 25
    const-string p0, "Connection to car response is missing"

    .line 26
    .line 27
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->-$$Nest$smnotifyCarDisconnected()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    const-string p0, "Connection to car response is empty"

    .line 41
    .line 42
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->-$$Nest$smnotifyCarDisconnected()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    invoke-interface {p3, p2}, Landroid/database/Cursor;->getInt(I)I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    if-nez p2, :cond_3

    .line 54
    .line 55
    const-string p0, "Android Auto disconnected"

    .line 56
    .line 57
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->-$$Nest$smnotifyCarDisconnected()V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    const-string p3, "Android Auto connected"

    .line 65
    .line 66
    invoke-static {p1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    new-instance p3, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {p3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    sget-object p0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->listener:Lcom/android/server/am/mars/filter/filter/CarConnectedFilter$1;

    .line 85
    .line 86
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;

    .line 87
    .line 88
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->isCarConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 89
    .line 90
    const/4 p2, 0x1

    .line 91
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 92
    .line 93
    .line 94
    const-string p0, "FILTER 32"

    .line 95
    .line 96
    const-string p2, "android auto on"

    .line 97
    .line 98
    invoke-static {p0, p2}, Lcom/android/server/am/mars/MARsUtils;->addFilterDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :catch_0
    const-string p0, "Error at onQueryComplete"

    .line 103
    .line 104
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->-$$Nest$smnotifyCarDisconnected()V

    .line 108
    .line 109
    .line 110
    :goto_0
    return-void
.end method
