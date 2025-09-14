.class public final Lcom/android/server/display/DisplayInfoProxy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mInfo:Landroid/view/DisplayInfo;


# virtual methods
.method public final set(Landroid/view/DisplayInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/DisplayInfoProxy;->mInfo:Landroid/view/DisplayInfo;

    .line 2
    .line 3
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->invalidateLocalDisplayInfoCaches()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
