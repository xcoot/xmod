.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/RootWindowContainer;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RootWindowContainer;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda22;->f$0:Lcom/android/server/wm/RootWindowContainer;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda22;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda22;->f$0:Lcom/android/server/wm/RootWindowContainer;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda22;->f$1:I

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPossibleDisplayInfoMapper:Lcom/android/server/wm/PossibleDisplayInfoMapper;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/android/server/wm/PossibleDisplayInfoMapper;->mDisplayInfos:Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->updateDisplayImePolicyCache()V

    .line 15
    .line 16
    .line 17
    return-void
.end method
