.class public final Lcom/android/server/people/data/PackageData;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mConversationStore:Lcom/android/server/people/data/ConversationStore;

.field public final mEventStore:Lcom/android/server/people/data/EventStore;

.field public final mIsDefaultDialerPredicate:Ljava/util/function/Predicate;

.field public final mIsDefaultSmsAppPredicate:Ljava/util/function/Predicate;

.field public final mPackageDataDir:Ljava/io/File;

.field public final mPackageName:Ljava/lang/String;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/util/function/Predicate;Ljava/util/function/Predicate;Ljava/util/concurrent/ScheduledExecutorService;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/people/data/PackageData;->mPackageName:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/people/data/PackageData;->mUserId:I

    .line 7
    .line 8
    new-instance p2, Ljava/io/File;

    .line 9
    .line 10
    invoke-direct {p2, p6, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/server/people/data/PackageData;->mPackageDataDir:Ljava/io/File;

    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 16
    .line 17
    .line 18
    new-instance p1, Lcom/android/server/people/data/ConversationStore;

    .line 19
    .line 20
    invoke-direct {p1, p2, p5}, Lcom/android/server/people/data/ConversationStore;-><init>(Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    .line 24
    .line 25
    new-instance p1, Lcom/android/server/people/data/EventStore;

    .line 26
    .line 27
    invoke-direct {p1, p2, p5}, Lcom/android/server/people/data/EventStore;-><init>(Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    .line 31
    .line 32
    iput-object p3, p0, Lcom/android/server/people/data/PackageData;->mIsDefaultDialerPredicate:Ljava/util/function/Predicate;

    .line 33
    .line 34
    iput-object p4, p0, Lcom/android/server/people/data/PackageData;->mIsDefaultSmsAppPredicate:Ljava/util/function/Predicate;

    .line 35
    .line 36
    return-void
.end method
