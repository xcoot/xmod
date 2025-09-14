.class public final Lcom/android/server/permission/access/immutable/MutableIntSet;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/permission/access/immutable/Immutable;


# instance fields
.field public final array:Landroid/util/SparseBooleanArray;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 2
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/permission/access/immutable/MutableIntSet;-><init>(Landroid/util/SparseBooleanArray;)V

    return-void
.end method

.method public constructor <init>(Landroid/util/SparseBooleanArray;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    return-void
.end method


# virtual methods
.method public final toMutable()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIntSet;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-direct {v0, p0}, Lcom/android/server/permission/access/immutable/MutableIntSet;-><init>(Landroid/util/SparseBooleanArray;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
