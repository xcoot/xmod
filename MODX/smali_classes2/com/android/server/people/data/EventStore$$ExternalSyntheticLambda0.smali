.class public final synthetic Lcom/android/server/people/data/EventStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/people/data/EventStore;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/data/EventStore;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/people/data/EventStore$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/people/data/EventStore;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/people/data/EventStore$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/people/data/EventStore$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/people/data/EventStore$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/people/data/EventStore;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/people/data/EventStore$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/people/data/EventStore$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    check-cast p1, Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance p1, Lcom/android/server/people/data/EventHistoryImpl;

    .line 13
    .line 14
    new-instance v2, Ljava/io/File;

    .line 15
    .line 16
    iget-object v3, v0, Lcom/android/server/people/data/EventStore;->mEventsCategoryDirs:Ljava/util/List;

    .line 17
    .line 18
    check-cast v3, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/io/File;

    .line 25
    .line 26
    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-direct {v2, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p0, v0, Lcom/android/server/people/data/EventStore;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 34
    .line 35
    new-instance v0, Lcom/android/server/people/data/EventHistoryImpl$Injector;

    .line 36
    .line 37
    invoke-direct {v0}, Lcom/android/server/people/data/EventHistoryImpl$Injector;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-direct {p1, v0, v2, p0}, Lcom/android/server/people/data/EventHistoryImpl;-><init>(Lcom/android/server/people/data/EventHistoryImpl$Injector;Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 41
    .line 42
    .line 43
    return-object p1
.end method
