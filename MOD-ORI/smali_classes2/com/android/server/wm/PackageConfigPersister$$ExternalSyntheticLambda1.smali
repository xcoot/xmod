.class public final synthetic Lcom/android/server/wm/PackageConfigPersister$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/PackageConfigPersister$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/PackageConfigPersister$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;->mRecord:Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    .line 6
    .line 7
    iget-object v0, p1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mName:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mName:Ljava/lang/String;

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget p1, p1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mUserId:I

    .line 14
    .line 15
    iget p0, p0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mUserId:I

    .line 16
    .line 17
    if-ne p1, p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0
.end method
