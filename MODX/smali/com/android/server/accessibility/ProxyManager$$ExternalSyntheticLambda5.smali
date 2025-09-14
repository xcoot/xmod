.class public final synthetic Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/accessibility/ProxyManager;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/ProxyManager;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/accessibility/ProxyManager;

    .line 5
    iput p2, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda5;->f$1:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/accessibility/ProxyManager;

    .line 8
    iget p0, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda5;->f$1:I

    .line 10
    iget-object v1, v0, Lcom/android/server/accessibility/ProxyManager;->mA11yInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 12
    if-eqz v1, :cond_0

    .line 14
    iget-object v1, v0, Lcom/android/server/accessibility/ProxyManager;->mContext:Landroid/content/Context;

    .line 16
    const-string/jumbo v2, "display"

    .line 19
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 25
    invoke-virtual {v1, p0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 28
    move-result-object p0

    .line 29
    if-eqz p0, :cond_0

    .line 31
    iget-object v0, v0, Lcom/android/server/accessibility/ProxyManager;->mA11yInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 33
    iget-boolean v1, v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    .line 35
    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    .line 40
    move-result v1

    .line 41
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->resetStreamStateForDisplay(I)V

    .line 44
    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->enableFeaturesForDisplay(Landroid/view/Display;)V

    .line 47
    :cond_0
    return-void

    .line 48
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/accessibility/ProxyManager;

    .line 50
    iget p0, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda5;->f$1:I

    .line 52
    iget-object v1, v0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    .line 54
    monitor-enter v1

    .line 55
    :try_start_0
    new-instance v2, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda11;

    .line 57
    const/4 v3, 0x1

    .line 58
    invoke-direct {v2, v0, p0, v3}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/accessibility/ProxyManager;II)V

    .line 61
    invoke-static {v2}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/ProxyManager;->broadcastToClientsLocked(Ljava/util/function/Consumer;)V

    .line 68
    monitor-exit v1

    .line 69
    return-void

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    throw p0

    .line 73
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/accessibility/ProxyManager;

    .line 75
    iget p0, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda5;->f$1:I

    .line 77
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    new-instance v1, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda11;

    .line 82
    const/4 v2, 0x0

    .line 83
    invoke-direct {v1, v0, p0, v2}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/accessibility/ProxyManager;II)V

    .line 86
    invoke-static {v1}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    .line 89
    move-result-object p0

    .line 90
    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/ProxyManager;->broadcastToClientsLocked(Ljava/util/function/Consumer;)V

    .line 93
    return-void

    .line 94
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/accessibility/ProxyManager;

    .line 96
    iget p0, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda5;->f$1:I

    .line 98
    iget-object v0, v0, Lcom/android/server/accessibility/ProxyManager;->mA11yInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 100
    if-eqz v0, :cond_1

    .line 102
    iget-boolean v1, v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    .line 104
    if-eqz v1, :cond_1

    .line 106
    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeaturesForDisplay(I)V

    .line 109
    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->resetStreamStateForDisplay(I)V

    .line 112
    :cond_1
    return-void

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
