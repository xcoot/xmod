.class public final Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;
.super Lcom/android/server/wm/DisplayAreaPolicy;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

.field public final mDisplayAreaGroupRoots:Ljava/util/List;

.field public final mSelectRootForWindowFunc:Ljava/util/function/BiFunction;

.field public final mSelectTaskDisplayAreaFunc:Ljava/util/function/Function;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/RootDisplayArea;Ljava/util/List;Ljava/util/function/BiFunction;Ljava/util/function/Function;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayAreaPolicy;-><init>(Lcom/android/server/wm/RootDisplayArea;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    iput-object p2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mDisplayAreaGroupRoots:Ljava/util/List;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mSelectRootForWindowFunc:Ljava/util/function/BiFunction;

    .line 11
    .line 12
    new-instance p2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowContainer;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/android/server/wm/TaskDisplayArea;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    if-eqz p4, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance p4, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectTaskDisplayAreaFunction;

    .line 31
    .line 32
    invoke-direct {p4, p1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectTaskDisplayAreaFunction;-><init>(Lcom/android/server/wm/TaskDisplayArea;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    iput-object p4, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mSelectTaskDisplayAreaFunc:Ljava/util/function/Function;

    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 39
    .line 40
    const-string p1, "No display area with FEATURE_DEFAULT_TASK_CONTAINER"

    .line 41
    .line 42
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p0
.end method

.method public static getDisplayAreas(Lcom/android/server/wm/RootDisplayArea;Ljava/util/List;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/RootDisplayArea;->mFeatures:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-ge v1, v2, :cond_1

    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    .line 15
    .line 16
    iget v3, v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->mId:I

    .line 17
    .line 18
    const/16 v4, 0x2712

    .line 19
    .line 20
    if-ne v3, v4, :cond_0

    .line 21
    .line 22
    iget-object v3, p0, Lcom/android/server/wm/RootDisplayArea;->mFeatureToDisplayAreas:Ljava/util/Map;

    .line 23
    .line 24
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/util/Collection;

    .line 29
    .line 30
    move-object v3, p1

    .line 31
    check-cast v3, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 34
    .line 35
    .line 36
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-void
.end method


# virtual methods
.method public findAreaForToken(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayArea$Tokens;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mSelectRootForWindowFunc:Ljava/util/function/BiFunction;

    .line 2
    .line 3
    iget v0, p1, Lcom/android/server/wm/WindowToken;->windowType:I

    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p1, Lcom/android/server/wm/WindowToken;->mOptions:Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-interface {p0, v0, v1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/android/server/wm/RootDisplayArea;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootDisplayArea;->findAreaForTokenInLayer(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayArea$Tokens;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public getFeatures()Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaPolicy;->mRoot:Lcom/android/server/wm/RootDisplayArea;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/wm/RootDisplayArea;->mFeatures:Ljava/util/List;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mDisplayAreaGroupRoots:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-ge v1, v2, :cond_0

    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mDisplayAreaGroupRoots:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lcom/android/server/wm/RootDisplayArea;

    .line 29
    .line 30
    iget-object v2, v2, Lcom/android/server/wm/RootDisplayArea;->mFeatures:Ljava/util/List;

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 33
    .line 34
    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 41
    .line 42
    .line 43
    return-object p0
.end method
