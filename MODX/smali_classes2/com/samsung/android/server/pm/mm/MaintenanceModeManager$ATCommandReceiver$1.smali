.class public final Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$ATCommandReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "com.samsung.intent.action.BCS_REQUEST"

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_2

    .line 12
    .line 13
    const-string p0, "command"

    .line 14
    .line 15
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string p2, "AT+SVCIFPGM=1,3"

    .line 20
    .line 21
    invoke-virtual {p2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_2

    .line 26
    .line 27
    const-class p0, Landroid/app/ActivityManagerInternal;

    .line 28
    .line 29
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Landroid/app/ActivityManagerInternal;

    .line 34
    .line 35
    if-eqz p0, :cond_0

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getCurrentUser()Landroid/content/pm/UserInfo;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 p0, 0x0

    .line 43
    :goto_0
    if-eqz p0, :cond_1

    .line 44
    .line 45
    iget p2, p0, Landroid/content/pm/UserInfo;->id:I

    .line 46
    .line 47
    const/16 v0, 0x4d

    .line 48
    .line 49
    if-ne p2, v0, :cond_1

    .line 50
    .line 51
    new-instance p2, Ljava/text/SimpleDateFormat;

    .line 52
    .line 53
    const-string/jumbo v0, "yyyyMMddHHmm"

    .line 54
    .line 55
    .line 56
    invoke-direct {p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    new-instance v0, Ljava/util/Date;

    .line 60
    .line 61
    iget-wide v1, p0, Landroid/content/pm/UserInfo;->creationTime:J

    .line 62
    .line 63
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    const-string p2, "AT+SVCIFPGM=1,3\r\n+SVCIFPGM:1,REPAIRMODE,"

    .line 71
    .line 72
    invoke-static {p2, p0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    goto :goto_1

    .line 77
    :cond_1
    const-string p0, "AT+SVCIFPGM=1,3\r\n+SVCIFPGM:1,USERMODE,NONE"

    .line 78
    .line 79
    :goto_1
    const-string p2, "\r\n"

    .line 80
    .line 81
    invoke-static {p0, p2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    new-instance p2, Landroid/content/Intent;

    .line 86
    .line 87
    const-string v0, "com.samsung.intent.action.BCS_RESPONSE"

    .line 88
    .line 89
    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const-string/jumbo v0, "response"

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    .line 97
    .line 98
    const-string/jumbo v0, "response: "

    .line 99
    .line 100
    .line 101
    const-string v1, "MaintenanceMode"

    .line 102
    .line 103
    invoke-static {v0, p0, v1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    sget-object p0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 107
    .line 108
    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 109
    .line 110
    .line 111
    :cond_2
    return-void
.end method
