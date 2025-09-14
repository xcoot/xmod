.class public final Lcom/android/server/vr/Vr2dDisplay$1;
.super Landroid/service/vr/IPersistentVrStateCallbacks$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/vr/Vr2dDisplay;


# direct methods
.method public constructor <init>(Lcom/android/server/vr/Vr2dDisplay;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/vr/Vr2dDisplay$1;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/service/vr/IPersistentVrStateCallbacks$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPersistentVrStateChanged(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/vr/Vr2dDisplay$1;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsPersistentVrModeEnabled:Z

    .line 4
    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsPersistentVrModeEnabled:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/vr/Vr2dDisplay;->updateVirtualDisplay()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
