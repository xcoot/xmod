.class public final synthetic Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/slice/PinnedSliceState;

.field public final synthetic f$1:[Landroid/app/slice/SliceSpec;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/slice/PinnedSliceState;[Landroid/app/slice/SliceSpec;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/slice/PinnedSliceState;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda3;->f$1:[Landroid/app/slice/SliceSpec;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/slice/PinnedSliceState;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda3;->f$1:[Landroid/app/slice/SliceSpec;

    .line 4
    .line 5
    check-cast p1, Landroid/app/slice/SliceSpec;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/app/slice/SliceSpec;->getType()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    array-length v1, p0

    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    const/4 v3, 0x0

    .line 17
    if-ge v2, v1, :cond_1

    .line 18
    .line 19
    aget-object v4, p0, v2

    .line 20
    .line 21
    invoke-virtual {v4}, Landroid/app/slice/SliceSpec;->getType()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-static {v5, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-eqz v5, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move-object v4, v3

    .line 36
    :goto_1
    if-nez v4, :cond_2

    .line 37
    .line 38
    move-object p1, v3

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    invoke-virtual {v4}, Landroid/app/slice/SliceSpec;->getRevision()I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    invoke-virtual {p1}, Landroid/app/slice/SliceSpec;->getRevision()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-ge p0, v0, :cond_3

    .line 49
    .line 50
    move-object p1, v4

    .line 51
    :cond_3
    :goto_2
    return-object p1
.end method
