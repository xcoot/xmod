.class public final synthetic Lcom/android/server/media/projection/MediaProjectionManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

.field public final synthetic f$1:Landroid/hardware/display/SemWifiDisplay;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/hardware/display/SemWifiDisplay;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 6
    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/display/SemWifiDisplay;

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 3
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/display/SemWifiDisplay;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const-string/jumbo v1, "ro.build.characteristics"

    .line 11
    const-string/jumbo v2, "phone"

    .line 14
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    const-string/jumbo v2, "tablet"

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 24
    move-result v1

    .line 25
    new-instance v2, Landroid/view/ContextThemeWrapper;

    .line 27
    iget-object v3, v0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    .line 29
    const v4, 0x103012b

    .line 32
    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 35
    iget-object v0, v0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    .line 37
    if-eqz v1, :cond_0

    .line 39
    const v1, 0x1040cf7

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const v1, 0x1040cf6

    .line 46
    :goto_0
    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplay;->getDeviceName()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 50
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 58
    const/4 v0, 0x1

    .line 59
    invoke-static {v2, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 66
    return-void
.end method
