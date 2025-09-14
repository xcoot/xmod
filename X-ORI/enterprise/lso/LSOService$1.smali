.class public final Lcom/android/server/enterprise/lso/LSOService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/lso/LSOService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/lso/LSOService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/lso/LSOService$1;->this$0:Lcom/android/server/enterprise/lso/LSOService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string/jumbo v0, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const-string/jumbo p1, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iget-object p0, p0, Lcom/android/server/enterprise/lso/LSOService$1;->this$0:Lcom/android/server/enterprise/lso/LSOService;

    .line 23
    .line 24
    const/4 p2, 0x0

    .line 25
    const/4 v0, 0x1

    .line 26
    invoke-virtual {p0, p2, v0}, Lcom/android/server/enterprise/lso/LSOService;->isConfigured(Lcom/samsung/android/knox/ContextInfo;I)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/lso/LSOService;->setLockscreenInvisibleOverlaySystemUI(IZ)V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x2

    .line 34
    invoke-virtual {p0, p2, v0}, Lcom/android/server/enterprise/lso/LSOService;->isConfigured(Lcom/samsung/android/knox/ContextInfo;I)Z

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/lso/LSOService;->setLockscreenWallpaperSystemUI(IZ)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method
