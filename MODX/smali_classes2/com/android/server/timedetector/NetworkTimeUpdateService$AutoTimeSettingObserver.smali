.class public final Lcom/android/server/timedetector/NetworkTimeUpdateService$AutoTimeSettingObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final synthetic this$0:Lcom/android/server/timedetector/NetworkTimeUpdateService;


# direct methods
.method public constructor <init>(Lcom/android/server/timedetector/NetworkTimeUpdateService;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$AutoTimeSettingObserver;->this$0:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-object p1, p3

    .line 10
    check-cast p1, Landroid/content/Context;

    .line 11
    .line 12
    iput-object p3, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$AutoTimeSettingObserver;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$AutoTimeSettingObserver;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "auto_time"

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$AutoTimeSettingObserver;->this$0:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    .line 17
    .line 18
    const-string p1, "automatic time enabled"

    .line 19
    .line 20
    invoke-static {p0, p1}, Lcom/android/server/timedetector/NetworkTimeUpdateService;->-$$Nest$monPollNetworkTime(Lcom/android/server/timedetector/NetworkTimeUpdateService;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
