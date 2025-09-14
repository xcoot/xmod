.class public final Lcom/android/server/logcat/LogcatManagerService$KnoxSecurityLogHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v0, 0x64

    .line 4
    .line 5
    if-eq p0, v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lcom/android/server/logcat/LogcatManagerService$SecurityLogEvent;

    .line 11
    .line 12
    iget p1, p0, Lcom/android/server/logcat/LogcatManagerService$SecurityLogEvent;->tag:I

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/logcat/LogcatManagerService$SecurityLogEvent;->payloads:Ljava/util/List;

    .line 15
    .line 16
    invoke-static {p1, v0}, Landroid/sec/enterprise/auditlog/AuditLog;->logSecurityLogEvent(ILjava/util/List;)V

    .line 17
    .line 18
    .line 19
    const-string/jumbo p1, "ro.build.type"

    .line 20
    .line 21
    .line 22
    const-string/jumbo v0, "user"

    .line 23
    .line 24
    .line 25
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    const-string/jumbo p1, "ro.product_ship"

    .line 36
    .line 37
    .line 38
    const-string/jumbo v0, "true"

    .line 39
    .line 40
    .line 41
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v0, "Knox security log event received - event: "

    .line 55
    .line 56
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    const-string p1, "LogcatManagerService"

    .line 67
    .line 68
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    return-void
.end method
