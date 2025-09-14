.class public final Lcom/android/server/notification/NotificationManagerService$26;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$26;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$26;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 5
    .line 6
    const-string v0, "enabled"

    .line 7
    .line 8
    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    const-string/jumbo v0, "true"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    iput-boolean p2, p1, Lcom/android/server/notification/NotificationManagerService;->mIsRuneStoneEnabled:Z

    .line 20
    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string p2, "RuneStone State change mIsRuneStoneEnabled = "

    .line 24
    .line 25
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$26;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 29
    .line 30
    iget-boolean p0, p0, Lcom/android/server/notification/NotificationManagerService;->mIsRuneStoneEnabled:Z

    .line 31
    .line 32
    const-string p2, "NotificationService"

    .line 33
    .line 34
    invoke-static {p2, p1, p0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
