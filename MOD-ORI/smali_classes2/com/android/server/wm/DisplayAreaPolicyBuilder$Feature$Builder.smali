.class public final Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mExcludeRoundedCorner:Z

.field public final mId:I

.field public final mLayers:[Z

.field public final mName:Ljava/lang/String;

.field public mNewDisplayAreaSupplier:Lcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;

.field public final mPolicy:Lcom/android/server/policy/WindowManagerPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/WindowManagerPolicy;Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mNewDisplayAreaSupplier:Lcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mExcludeRoundedCorner:Z

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mName:Ljava/lang/String;

    .line 17
    .line 18
    iput p3, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mId:I

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const/16 p1, 0x25

    .line 24
    .line 25
    new-array p1, p1, [Z

    .line 26
    .line 27
    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mLayers:[Z

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final build()Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mExcludeRoundedCorner:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mLayers:[Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const/16 v0, 0x24

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    aput-boolean v2, v1, v0

    .line 16
    .line 17
    :cond_0
    new-instance v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    .line 18
    .line 19
    invoke-virtual {v1}, [Z->clone()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, [Z

    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mNewDisplayAreaSupplier:Lcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;

    .line 26
    .line 27
    iget-object v3, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mName:Ljava/lang/String;

    .line 28
    .line 29
    iget p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mId:I

    .line 30
    .line 31
    invoke-direct {v0, v3, p0, v1, v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;-><init>(Ljava/lang/String;I[ZLcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;)V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method

.method public final varargs except([I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    array-length v2, p1

    .line 4
    if-ge v1, v2, :cond_0

    .line 5
    .line 6
    aget v2, p1, v1

    .line 7
    .line 8
    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->set(IZ)V

    .line 9
    .line 10
    .line 11
    add-int/lit8 v1, v1, 0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    return-void
.end method

.method public final layerFromType(IZ)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    invoke-static {p1, p2, p0}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZZ)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final set(IZ)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->layerFromType(IZ)I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mLayers:[Z

    .line 7
    .line 8
    aput-boolean p2, v2, v1

    .line 9
    .line 10
    const/16 v1, 0x7f6

    .line 11
    .line 12
    if-ne p1, v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->layerFromType(IZ)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    aput-boolean p2, v2, p1

    .line 19
    .line 20
    const/16 p1, 0x7d3

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->layerFromType(IZ)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    aput-boolean p2, v2, p1

    .line 28
    .line 29
    const/16 p1, 0x7d6

    .line 30
    .line 31
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->layerFromType(IZ)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    aput-boolean p2, v2, p1

    .line 36
    .line 37
    const/16 p1, 0x7da

    .line 38
    .line 39
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->layerFromType(IZ)I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    aput-boolean p2, v2, p0

    .line 44
    .line 45
    :cond_0
    return-void
.end method
