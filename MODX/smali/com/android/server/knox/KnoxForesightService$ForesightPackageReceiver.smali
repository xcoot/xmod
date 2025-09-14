.class public final Lcom/android/server/knox/KnoxForesightService$ForesightPackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/KnoxForesightService;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/KnoxForesightService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/knox/KnoxForesightService$ForesightPackageReceiver;->this$0:Lcom/android/server/knox/KnoxForesightService;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 3
    const-string v0, "ForesightPackageReceiver: "

    .line 5
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    const-string v0, "KnoxForesightService"

    .line 17
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 29
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_0

    .line 35
    new-instance p0, Ljava/lang/StringBuilder;

    .line 37
    const-string p1, "Received unknown intent: "

    .line 39
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 49
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/android/server/knox/KnoxForesightService$ForesightPackageReceiver;->this$0:Lcom/android/server/knox/KnoxForesightService;

    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 61
    move-result-object p1

    .line 62
    if-eqz p1, :cond_1

    .line 64
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    const/4 p1, 0x0

    .line 70
    :goto_0
    const-string/jumbo p2, "com.samsung.android.knox.foresight"

    .line 73
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_2

    .line 79
    iget-object p0, p0, Lcom/android/server/knox/KnoxForesightService$ForesightPackageReceiver;->this$0:Lcom/android/server/knox/KnoxForesightService;

    .line 81
    invoke-virtual {p0}, Lcom/android/server/knox/KnoxForesightService;->initializeKnoxForesight()V

    .line 84
    goto :goto_1

    .line 85
    :cond_2
    const-string/jumbo p0, "package name not matched"

    .line 88
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :goto_1
    return-void
.end method
