.class public final Lcom/android/server/compat/overrides/Overrides;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public changeOverrides:Ljava/util/List;


# virtual methods
.method public final getChangeOverrides()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/compat/overrides/Overrides;->changeOverrides:Ljava/util/List;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/android/server/compat/overrides/Overrides;->changeOverrides:Ljava/util/List;

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/compat/overrides/Overrides;->changeOverrides:Ljava/util/List;

    .line 14
    return-object p0
.end method
