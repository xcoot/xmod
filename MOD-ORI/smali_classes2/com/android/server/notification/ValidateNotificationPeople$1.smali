.class public final Lcom/android/server/notification/ValidateNotificationPeople$1;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/ValidateNotificationPeople;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$1;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/android/server/notification/ValidateNotificationPeople$1;->val$context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;I)V

    .line 2
    .line 3
    .line 4
    sget-boolean p1, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$1;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    .line 9
    .line 10
    iget p1, p1, Lcom/android/server/notification/ValidateNotificationPeople;->mEvictionCount:I

    .line 11
    .line 12
    rem-int/lit8 p1, p1, 0x64

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    :cond_0
    sget-boolean p1, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string p2, "mEvictionCount: "

    .line 23
    .line 24
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p2, p0, Lcom/android/server/notification/ValidateNotificationPeople$1;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    .line 28
    .line 29
    iget p2, p2, Lcom/android/server/notification/ValidateNotificationPeople;->mEvictionCount:I

    .line 30
    .line 31
    const-string v0, "ValidateNoPeople"

    .line 32
    .line 33
    invoke-static {p1, p2, v0}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$1;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/android/server/notification/ValidateNotificationPeople;->mPeopleCache:Landroid/util/LruCache;

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/util/LruCache;->evictAll()V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$1;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    .line 44
    .line 45
    iget p2, p1, Lcom/android/server/notification/ValidateNotificationPeople;->mEvictionCount:I

    .line 46
    .line 47
    add-int/lit8 p2, p2, 0x1

    .line 48
    .line 49
    iput p2, p1, Lcom/android/server/notification/ValidateNotificationPeople;->mEvictionCount:I

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/notification/ValidateNotificationPeople$1;->val$context:Landroid/content/Context;

    .line 52
    .line 53
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    new-instance v1, Lcom/android/server/notification/ValidateNotificationPeople$$ExternalSyntheticLambda1;

    .line 65
    .line 66
    invoke-direct {v1, p1, p3, p0, p2}, Lcom/android/server/notification/ValidateNotificationPeople$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/notification/ValidateNotificationPeople;ILandroid/content/Context;I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 70
    .line 71
    .line 72
    return-void
.end method
