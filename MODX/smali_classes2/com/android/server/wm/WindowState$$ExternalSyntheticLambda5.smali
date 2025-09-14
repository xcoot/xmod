.class public final synthetic Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/view/InsetsState;

.field public final synthetic f$1:Landroid/util/ArraySet;

.field public final synthetic f$2:Landroid/util/SparseArray;


# direct methods
.method public synthetic constructor <init>(Landroid/view/InsetsState;Landroid/util/SparseArray;Landroid/util/ArraySet;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda5;->f$0:Landroid/view/InsetsState;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda5;->f$1:Landroid/util/ArraySet;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda5;->f$2:Landroid/util/SparseArray;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda5;->f$0:Landroid/view/InsetsState;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda5;->f$1:Landroid/util/ArraySet;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda5;->f$2:Landroid/util/SparseArray;

    .line 6
    .line 7
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 8
    .line 9
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAboveInsetsState:Landroid/view/InsetsState;

    .line 10
    .line 11
    invoke-virtual {v2, v0}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAboveInsetsState:Landroid/view/InsetsState;

    .line 18
    .line 19
    invoke-virtual {v2, v0}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mMergedLocalInsetsSources:Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->contentEquals(Landroid/util/SparseArray;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    iput-object p0, p1, Lcom/android/server/wm/WindowState;->mMergedLocalInsetsSources:Landroid/util/SparseArray;

    .line 34
    .line 35
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object p0, p1, Lcom/android/server/wm/WindowContainer;->mInsetsSourceProviders:Landroid/util/SparseArray;

    .line 39
    .line 40
    if-eqz p0, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    add-int/lit8 p1, p1, -0x1

    .line 47
    .line 48
    :goto_0
    if-ltz p1, :cond_2

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Lcom/android/server/wm/InsetsSourceProvider;

    .line 55
    .line 56
    iget-object v1, v1, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 59
    .line 60
    .line 61
    add-int/lit8 p1, p1, -0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    return-void
.end method
