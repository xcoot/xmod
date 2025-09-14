.class public final Lcom/android/server/notification/ValidateNotificationPeople$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$prr:Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;

.field public final synthetic val$s:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$2;->val$prr:Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/notification/ValidateNotificationPeople$2;->val$s:Ljava/util/concurrent/Semaphore;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$2;->val$prr:Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->work()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/notification/ValidateNotificationPeople$2;->val$s:Ljava/util/concurrent/Semaphore;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
