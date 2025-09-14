.class public final Lcom/android/server/smartclip/BleSpenManager$1;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/smartclip/BleSpenManager;


# direct methods
.method public constructor <init>(Lcom/android/server/smartclip/BleSpenManager;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/smartclip/BleSpenManager$1;->this$0:Lcom/android/server/smartclip/BleSpenManager;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/smartclip/BleSpenManager$1;->this$0:Lcom/android/server/smartclip/BleSpenManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->isAirActionSettingEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v1, "onAirActionSettingChanged : "

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "BleSpenManager"

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    iget-object p1, p0, Lcom/android/server/smartclip/BleSpenManager;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/BleSpenManager;->startRemoteSpenService(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/android/server/smartclip/BleSpenManager;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/BleSpenManager;->startBlindChargeService(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_0
    return-void
.end method
