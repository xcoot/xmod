.class public abstract Lcom/android/server/permission/access/AccessState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/permission/access/immutable/Immutable;


# instance fields
.field public final externalStateReference:Lcom/android/server/permission/access/immutable/MutableReference;

.field public final systemStateReference:Lcom/android/server/permission/access/immutable/MutableReference;

.field public final userStatesReference:Lcom/android/server/permission/access/immutable/MutableReference;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/permission/access/AccessState;->externalStateReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/permission/access/AccessState;->systemStateReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/permission/access/AccessState;->userStatesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getExternalState()Lcom/android/server/permission/access/MutableExternalState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/AccessState;->externalStateReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/MutableReference;->immutable:Lcom/android/server/permission/access/immutable/Immutable;

    .line 4
    .line 5
    check-cast p0, Lcom/android/server/permission/access/MutableExternalState;

    .line 6
    .line 7
    return-object p0
.end method

.method public final getSystemState()Lcom/android/server/permission/access/MutableSystemState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/AccessState;->systemStateReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/MutableReference;->immutable:Lcom/android/server/permission/access/immutable/Immutable;

    .line 4
    .line 5
    check-cast p0, Lcom/android/server/permission/access/MutableSystemState;

    .line 6
    .line 7
    return-object p0
.end method

.method public final getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/AccessState;->userStatesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/MutableReference;->immutable:Lcom/android/server/permission/access/immutable/Immutable;

    .line 4
    .line 5
    check-cast p0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 6
    .line 7
    return-object p0
.end method

.method public final toMutable()Lcom/android/server/permission/access/MutableAccessState;
    .locals 3

    .line 2
    new-instance v0, Lcom/android/server/permission/access/MutableAccessState;

    .line 3
    iget-object v1, p0, Lcom/android/server/permission/access/AccessState;->externalStateReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {v1}, Lcom/android/server/permission/access/immutable/MutableReference;->toImmutable()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/android/server/permission/access/AccessState;->systemStateReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {v2}, Lcom/android/server/permission/access/immutable/MutableReference;->toImmutable()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object v2

    .line 5
    iget-object p0, p0, Lcom/android/server/permission/access/AccessState;->userStatesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/MutableReference;->toImmutable()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object p0

    .line 6
    invoke-direct {v0, v1, v2, p0}, Lcom/android/server/permission/access/AccessState;-><init>(Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;)V

    return-object v0
.end method

.method public final bridge synthetic toMutable()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object p0

    return-object p0
.end method
