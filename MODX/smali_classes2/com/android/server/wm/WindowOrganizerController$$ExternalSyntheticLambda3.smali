.class public final synthetic Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowOrganizerController;

.field public final synthetic f$1:Landroid/window/WindowContainerTransaction;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/server/wm/WindowOrganizerController$CallerInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowOrganizerController;Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/WindowOrganizerController$CallerInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/WindowOrganizerController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda3;->f$1:Landroid/window/WindowContainerTransaction;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda3;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda3;->f$3:Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v6, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/WindowOrganizerController;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda3;->f$1:Landroid/window/WindowContainerTransaction;

    .line 4
    .line 5
    iget v7, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda3;->f$2:I

    .line 6
    .line 7
    iget-object v4, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda3;->f$3:Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    move-object v0, v6

    .line 12
    move v2, v7

    .line 13
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Lcom/android/server/wm/Transition;)I

    .line 14
    .line 15
    .line 16
    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowOrganizerController;->setSyncReady(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
