.class public final Lcom/android/server/bgslotmanager/BGSlotManager$1;
.super Landroid/os/CountDownTimer;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/bgslotmanager/BGSlotManager;


# direct methods
.method public constructor <init>(Lcom/android/server/bgslotmanager/BGSlotManager;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/server/bgslotmanager/BGSlotManager$1;->this$0:Lcom/android/server/bgslotmanager/BGSlotManager;

    .line 3
    const-wide/32 v0, 0xea60

    .line 6
    invoke-direct {p0, v0, v1, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 9
    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 2

    .line 1
    const-string/jumbo v0, "swapTimer onfinish"

    .line 4
    const-string v1, "DynamicHiddenApp_BGSlotManager"

    .line 6
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object p0, p0, Lcom/android/server/bgslotmanager/BGSlotManager$1;->this$0:Lcom/android/server/bgslotmanager/BGSlotManager;

    .line 11
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/BGSlotManager;->setBonusMaxCachedAppsPerSwap()V

    .line 14
    new-instance p0, Ljava/lang/StringBuilder;

    .line 16
    const-string/jumbo v0, "change Max_Cached by setSwapTimer : "

    .line 19
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    sget v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_CACHED_APPS:I

    .line 24
    invoke-static {p0, v0, v1}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 27
    return-void
.end method

.method public final onTick(J)V
    .locals 0

    .line 1
    return-void
.end method
