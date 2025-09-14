.class public final Lcom/android/server/audio/AudioService$4;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    .line 3
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onSubscriptionsChanged()V
    .locals 7

    .line 1
    const-string v0, "AS.AudioService"

    .line 3
    const-string/jumbo v1, "onSubscriptionsChanged()"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object p0, p0, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    .line 11
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 13
    const/16 v1, 0x36

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x0

    .line 20
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 23
    return-void
.end method
