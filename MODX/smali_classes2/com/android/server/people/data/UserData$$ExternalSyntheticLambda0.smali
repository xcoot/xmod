.class public final synthetic Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/people/data/UserData;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/data/UserData;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/people/data/UserData;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/people/data/UserData;

    .line 2
    .line 3
    iget-object v2, p0, Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance p0, Lcom/android/server/people/data/PackageData;

    .line 11
    .line 12
    new-instance v4, Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda1;

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    invoke-direct {v4, v0, p1}, Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/people/data/UserData;I)V

    .line 16
    .line 17
    .line 18
    new-instance v5, Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda1;

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    invoke-direct {v5, v0, p1}, Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/people/data/UserData;I)V

    .line 22
    .line 23
    .line 24
    iget-object v6, v0, Lcom/android/server/people/data/UserData;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 25
    .line 26
    iget-object v7, v0, Lcom/android/server/people/data/UserData;->mPerUserPeopleDataDir:Ljava/io/File;

    .line 27
    .line 28
    iget v3, v0, Lcom/android/server/people/data/UserData;->mUserId:I

    .line 29
    .line 30
    move-object v1, p0

    .line 31
    invoke-direct/range {v1 .. v7}, Lcom/android/server/people/data/PackageData;-><init>(Ljava/lang/String;ILjava/util/function/Predicate;Ljava/util/function/Predicate;Ljava/util/concurrent/ScheduledExecutorService;Ljava/io/File;)V

    .line 32
    .line 33
    .line 34
    return-object p0
.end method
