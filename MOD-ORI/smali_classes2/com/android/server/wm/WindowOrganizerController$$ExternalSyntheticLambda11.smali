.class public final synthetic Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/window/WindowContainerTransaction$Change;

.field public final synthetic f$1:[I


# direct methods
.method public synthetic constructor <init>(Landroid/window/WindowContainerTransaction$Change;[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda11;->f$0:Landroid/window/WindowContainerTransaction$Change;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda11;->f$1:[I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda11;->f$0:Landroid/window/WindowContainerTransaction$Change;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda11;->f$1:[I

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/wm/Task;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    and-int/lit8 v1, v1, 0x8

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$Change;->getHidden()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x2

    .line 20
    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/Task;->setForceHidden(IZ)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    aget v0, p0, p1

    .line 28
    .line 29
    or-int/2addr v0, v1

    .line 30
    aput v0, p0, p1

    .line 31
    .line 32
    :cond_0
    return-void
.end method
