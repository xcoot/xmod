.class public final synthetic Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p0, Landroid/view/SurfaceControl$Builder;

    .line 2
    .line 3
    check-cast p1, Landroid/view/SurfaceSession;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method
