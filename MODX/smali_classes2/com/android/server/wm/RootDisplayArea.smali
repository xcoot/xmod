.class public abstract Lcom/android/server/wm/RootDisplayArea;
.super Lcom/android/server/wm/DisplayArea$Dimmable;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field private mAreaForLayer:[Lcom/android/server/wm/DisplayArea$Tokens;

.field mFeatureToDisplayAreas:Ljava/util/Map;

.field mFeatures:Ljava/util/List;

.field private mHasBuiltHierarchy:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;I)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/wm/DisplayArea$Type;->ANY:Lcom/android/server/wm/DisplayArea$Type;

    .line 2
    .line 3
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/server/wm/DisplayArea$Dimmable;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public asRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;
    .locals 0

    .line 1
    return-object p0
.end method

.method public findAreaForTokenInLayer(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayArea$Tokens;
    .locals 2

    .line 1
    iget v0, p1, Lcom/android/server/wm/WindowToken;->windowType:I

    .line 2
    .line 3
    iget-boolean v1, p1, Lcom/android/server/wm/WindowToken;->mOwnerCanManageAppTokens:Z

    .line 4
    .line 5
    iget-boolean p1, p1, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/wm/RootDisplayArea;->findAreaForWindowTypeInLayer(IZZ)Lcom/android/server/wm/DisplayArea$Tokens;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public findAreaForWindowTypeInLayer(IZZ)Lcom/android/server/wm/DisplayArea$Tokens;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {p1, p2, p3}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZZ)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/4 p2, 0x2

    .line 13
    if-eq p1, p2, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/wm/RootDisplayArea;->mAreaForLayer:[Lcom/android/server/wm/DisplayArea$Tokens;

    .line 16
    .line 17
    aget-object p0, p0, p1

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string p1, "There shouldn\'t be WindowToken on APPLICATION_LAYER"

    .line 23
    .line 24
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p0
.end method

.method public getRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;
    .locals 0

    .line 1
    return-object p0
.end method

.method public isOrientationDifferentFromDisplay()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public onHierarchyBuilt(Ljava/util/ArrayList;[Lcom/android/server/wm/DisplayArea$Tokens;Ljava/util/Map;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/RootDisplayArea;->mHasBuiltHierarchy:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/android/server/wm/RootDisplayArea;->mHasBuiltHierarchy:Z

    .line 7
    .line 8
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/android/server/wm/RootDisplayArea;->mFeatures:Ljava/util/List;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/android/server/wm/RootDisplayArea;->mAreaForLayer:[Lcom/android/server/wm/DisplayArea$Tokens;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/android/server/wm/RootDisplayArea;->mFeatureToDisplayAreas:Ljava/util/Map;

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string p1, "Root should only build the hierarchy once"

    .line 22
    .line 23
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p0
.end method

.method public placeImeContainer(Lcom/android/server/wm/DisplayArea$Tokens;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/wm/RootDisplayArea;->mFeatures:Ljava/util/List;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    if-ge v3, v4, :cond_2

    .line 14
    .line 15
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    check-cast v4, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    .line 20
    .line 21
    iget v5, v4, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->mId:I

    .line 22
    .line 23
    const/4 v6, 0x7

    .line 24
    if-ne v5, v6, :cond_1

    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/wm/RootDisplayArea;->mFeatureToDisplayAreas:Ljava/util/Map;

    .line 27
    .line 28
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    const/4 v4, 0x1

    .line 39
    if-ne v3, v4, :cond_0

    .line 40
    .line 41
    iget-object v3, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 42
    .line 43
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 44
    .line 45
    iget-object v5, v0, Lcom/android/server/wm/RootDisplayArea;->mAreaForLayer:[Lcom/android/server/wm/DisplayArea$Tokens;

    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    const/16 v3, 0x7db

    .line 51
    .line 52
    invoke-static {v3}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    const/4 v7, 0x0

    .line 57
    aput-object v7, v5, v6

    .line 58
    .line 59
    iget-object v0, v0, Lcom/android/server/wm/RootDisplayArea;->mAreaForLayer:[Lcom/android/server/wm/DisplayArea$Tokens;

    .line 60
    .line 61
    const/16 v5, 0x7dc

    .line 62
    .line 63
    invoke-static {v5}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    aput-object v7, v0, v6

    .line 68
    .line 69
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Lcom/android/server/wm/WindowContainer;

    .line 74
    .line 75
    const v1, 0x7fffffff

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/WindowContainer;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 82
    .line 83
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 84
    .line 85
    iget-object v1, p0, Lcom/android/server/wm/RootDisplayArea;->mAreaForLayer:[Lcom/android/server/wm/DisplayArea$Tokens;

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    invoke-static {v3}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    aput-object p1, v1, v0

    .line 95
    .line 96
    iget-object p0, p0, Lcom/android/server/wm/RootDisplayArea;->mAreaForLayer:[Lcom/android/server/wm/DisplayArea$Tokens;

    .line 97
    .line 98
    invoke-static {v5}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    aput-object p1, p0, v0

    .line 103
    .line 104
    return v4

    .line 105
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 106
    .line 107
    const-string p1, "There must be exactly one DisplayArea for the FEATURE_IME_PLACEHOLDER"

    .line 108
    .line 109
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p0

    .line 113
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    .line 117
    .line 118
    .line 119
    move-result p0

    .line 120
    if-nez p0, :cond_3

    .line 121
    .line 122
    const-string p0, "WindowManager"

    .line 123
    .line 124
    const-string p1, "The IME target is not in the same root as the IME container, but there is no DisplayArea of FEATURE_IME_PLACEHOLDER in the target RootDisplayArea"

    .line 125
    .line 126
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    :cond_3
    return v2
.end method
