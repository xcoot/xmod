.class public final Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectRootForWindowFunction;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final mDisplayAreaGroupRoots:Ljava/util/List;

.field public final mDisplayRoot:Lcom/android/server/wm/RootDisplayArea;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/RootDisplayArea;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectRootForWindowFunction;->mDisplayRoot:Lcom/android/server/wm/RootDisplayArea;

    .line 5
    .line 6
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectRootForWindowFunction;->mDisplayAreaGroupRoots:Ljava/util/List;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    .line 3
    check-cast p2, Landroid/os/Bundle;

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectRootForWindowFunction;->mDisplayAreaGroupRoots:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectRootForWindowFunction;->mDisplayRoot:Lcom/android/server/wm/RootDisplayArea;

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    if-eqz p2, :cond_3

    .line 17
    .line 18
    const-string/jumbo p1, "root_display_area_id"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iget-object p2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectRootForWindowFunction;->mDisplayRoot:Lcom/android/server/wm/RootDisplayArea;

    .line 32
    .line 33
    iget v0, p2, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    .line 34
    .line 35
    if-ne v0, p1, :cond_1

    .line 36
    .line 37
    move-object p0, p2

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    iget-object p2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectRootForWindowFunction;->mDisplayAreaGroupRoots:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    add-int/lit8 p2, p2, -0x1

    .line 46
    .line 47
    :goto_0
    if-ltz p2, :cond_3

    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectRootForWindowFunction;->mDisplayAreaGroupRoots:Ljava/util/List;

    .line 50
    .line 51
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lcom/android/server/wm/RootDisplayArea;

    .line 56
    .line 57
    iget v0, v0, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    .line 58
    .line 59
    if-ne v0, p1, :cond_2

    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectRootForWindowFunction;->mDisplayAreaGroupRoots:Ljava/util/List;

    .line 62
    .line 63
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    check-cast p0, Lcom/android/server/wm/RootDisplayArea;

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    add-int/lit8 p2, p2, -0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectRootForWindowFunction;->mDisplayRoot:Lcom/android/server/wm/RootDisplayArea;

    .line 74
    .line 75
    :goto_1
    return-object p0
.end method
