.class public final synthetic Lcom/android/server/wm/WindowManagerService$LocalService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/wm/WindowManagerService$LocalService$$ExternalSyntheticLambda5;->f$0:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService$$ExternalSyntheticLambda5;->f$0:I

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/wm/DisplayContent;

    .line 4
    .line 5
    iget v0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 6
    .line 7
    if-eq v0, p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayContent;->setImeInputTarget(Lcom/android/server/wm/InputTarget;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
