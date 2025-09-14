.class Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;
.super Lcom/android/server/notification/RankingReconsideration;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mContactAffinity:F

.field public final mContext:Landroid/content/Context;

.field public final mPendingLookups:Ljava/util/LinkedList;

.field public mPhoneNumbers:Landroid/util/ArraySet;

.field public mRecord:Lcom/android/server/notification/NotificationRecord;

.field public final synthetic this$0:Lcom/android/server/notification/ValidateNotificationPeople;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedList;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    invoke-direct {p0, v0, v1, p3}, Lcom/android/server/notification/RankingReconsideration;-><init>(JLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mPhoneNumbers:Landroid/util/ArraySet;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p4, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mPendingLookups:Ljava/util/LinkedList;

    .line 17
    .line 18
    return-void
.end method

.method public static addContacts(Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 7

    .line 1
    const-string v0, "ValidateNoPeople"

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v3, Lcom/android/server/notification/ValidateNotificationPeople;->LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 8
    .line 9
    const/4 v6, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    move-object v2, p2

    .line 13
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 14
    .line 15
    .line 16
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    :try_start_1
    const-string p0, "Null cursor from contacts query."

    .line 20
    .line 21
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 22
    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_4

    .line 32
    :cond_0
    :goto_0
    return-void

    .line 33
    :catchall_1
    move-exception p0

    .line 34
    goto :goto_2

    .line 35
    :cond_1
    :goto_1
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-eqz p2, :cond_2

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mergeContact(Landroid/database/Cursor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    :try_start_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 46
    .line 47
    .line 48
    goto :goto_5

    .line 49
    :goto_2
    if-eqz p1, :cond_3

    .line 50
    .line 51
    :try_start_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 52
    .line 53
    .line 54
    goto :goto_3

    .line 55
    :catchall_2
    move-exception p1

    .line 56
    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    :goto_3
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 60
    :goto_4
    const-string p1, "Problem getting content resolver or performing contacts query."

    .line 61
    .line 62
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    .line 64
    .line 65
    :goto_5
    return-void
.end method

.method public static searchContacts(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroid/provider/ContactsContract$Contacts;->createCorpLookupUriFromEnterpriseLookupUri(Landroid/net/Uri;)Landroid/net/Uri;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-static {v0, p0, p1}, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->addContacts(Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;Landroid/content/Context;Landroid/net/Uri;)V

    .line 13
    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_0
    const-class p1, Landroid/os/UserManager;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/os/UserManager;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/4 v3, 0x1

    .line 29
    invoke-virtual {p1, v2, v3}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    array-length v3, v2

    .line 34
    const/4 v4, 0x0

    .line 35
    :goto_0
    const/4 v5, -0x1

    .line 36
    if-ge v4, v3, :cond_2

    .line 37
    .line 38
    aget v6, v2, v4

    .line 39
    .line 40
    invoke-virtual {p1, v6}, Landroid/os/UserManager;->isManagedProfile(I)Z

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    if-eqz v7, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    move v6, v5

    .line 51
    :goto_1
    if-ne v6, v5, :cond_3

    .line 52
    .line 53
    new-instance p0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string p1, "Work profile user ID not found for work contact: "

    .line 56
    .line 57
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    const-string p1, "ValidateNoPeople"

    .line 68
    .line 69
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_3
    invoke-static {v1, v6}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {v0, p0, p1}, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->addContacts(Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;Landroid/content/Context;Landroid/net/Uri;)V

    .line 78
    .line 79
    .line 80
    :goto_2
    return-object v0
.end method

.method public static searchContactsAndLookupNumbers(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .locals 8

    .line 1
    const-string v0, "ValidateNoPeople"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->searchContacts(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-boolean v1, p1, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mHasPhone:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v1, p1, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mPhoneLookupKey:Ljava/lang/String;

    .line 14
    .line 15
    :goto_0
    if-eqz v1, :cond_5

    .line 16
    .line 17
    const-string v5, "lookup = ?"

    .line 18
    .line 19
    filled-new-array {v1}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 28
    .line 29
    sget-object v4, Lcom/android/server/notification/ValidateNotificationPeople;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 30
    .line 31
    const/4 v7, 0x0

    .line 32
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 33
    .line 34
    .line 35
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    if-nez p0, :cond_2

    .line 37
    .line 38
    :try_start_1
    const-string v1, "Cursor is null when querying contact phone number."

    .line 39
    .line 40
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 41
    .line 42
    .line 43
    if-eqz p0, :cond_1

    .line 44
    .line 45
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_5

    .line 51
    :cond_1
    :goto_1
    return-object p1

    .line 52
    :catchall_1
    move-exception v1

    .line 53
    goto :goto_3

    .line 54
    :cond_2
    :goto_2
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    invoke-virtual {p1, p0}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mergePhoneNumber(Landroid/database/Cursor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_3
    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 65
    .line 66
    .line 67
    goto :goto_6

    .line 68
    :goto_3
    if-eqz p0, :cond_4

    .line 69
    .line 70
    :try_start_5
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 71
    .line 72
    .line 73
    goto :goto_4

    .line 74
    :catchall_2
    move-exception p0

    .line 75
    :try_start_6
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    :cond_4
    :goto_4
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 79
    :goto_5
    const-string v1, "Problem getting content resolver or querying phone numbers."

    .line 80
    .line 81
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    .line 83
    .line 84
    :cond_5
    :goto_6
    return-object p1
.end method


# virtual methods
.method public final applyChangesLocked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 2

    .line 1
    iget v0, p1, Lcom/android/server/notification/NotificationRecord;->mContactAffinity:F

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    .line 4
    .line 5
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput v0, p1, Lcom/android/server/notification/NotificationRecord;->mContactAffinity:F

    .line 10
    .line 11
    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "final affinity: "

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget v1, p1, Lcom/android/server/notification/NotificationRecord;->mContactAffinity:F

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "ValidateNoPeople"

    .line 32
    .line 33
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mPhoneNumbers:Landroid/util/ArraySet;

    .line 37
    .line 38
    if-eqz p0, :cond_3

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->mPhoneNumbers:Landroid/util/ArraySet;

    .line 48
    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    new-instance v0, Landroid/util/ArraySet;

    .line 52
    .line 53
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v0, p1, Lcom/android/server/notification/NotificationRecord;->mPhoneNumbers:Landroid/util/ArraySet;

    .line 57
    .line 58
    :cond_2
    iget-object p1, p1, Lcom/android/server/notification/NotificationRecord;->mPhoneNumbers:Landroid/util/ArraySet;

    .line 59
    .line 60
    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 61
    .line 62
    .line 63
    :cond_3
    :goto_0
    return-void
.end method

.method public final work()V
    .locals 10

    .line 1
    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "ValidateNoPeople"

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "Executing: validation for: "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/notification/RankingReconsideration;->mKey:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v1, v2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    iget-object v2, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mPendingLookups:Ljava/util/LinkedList;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const/4 v4, 0x1

    .line 34
    const/4 v5, 0x0

    .line 35
    if-eqz v3, :cond_e

    .line 36
    .line 37
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Ljava/lang/String;

    .line 42
    .line 43
    iget-object v6, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    invoke-virtual {v6}, Landroid/content/Context;->getUserId()I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    invoke-static {v6, v3}, Lcom/android/server/notification/ValidateNotificationPeople;->getCacheKey(ILjava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    iget-object v7, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    .line 54
    .line 55
    iget-object v7, v7, Lcom/android/server/notification/ValidateNotificationPeople;->mPeopleCache:Landroid/util/LruCache;

    .line 56
    .line 57
    monitor-enter v7

    .line 58
    :try_start_0
    iget-object v8, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    .line 59
    .line 60
    iget-object v8, v8, Lcom/android/server/notification/ValidateNotificationPeople;->mPeopleCache:Landroid/util/LruCache;

    .line 61
    .line 62
    invoke-virtual {v8, v6}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    check-cast v8, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    .line 67
    .line 68
    if-eqz v8, :cond_2

    .line 69
    .line 70
    invoke-virtual {v8}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->isExpired()Z

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    if-nez v9, :cond_2

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    goto/16 :goto_4

    .line 79
    .line 80
    :cond_2
    move v4, v5

    .line 81
    :goto_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    if-nez v4, :cond_9

    .line 83
    .line 84
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    const-string/jumbo v7, "tel"

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    if-eqz v7, :cond_4

    .line 100
    .line 101
    sget-boolean v7, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    .line 102
    .line 103
    if-eqz v7, :cond_3

    .line 104
    .line 105
    const-string v7, "ValidateNoPeople"

    .line 106
    .line 107
    const-string v8, "checking telephone URI: "

    .line 108
    .line 109
    invoke-static {v8, v3, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :cond_3
    iget-object v3, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContext:Landroid/content/Context;

    .line 113
    .line 114
    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    sget-object v7, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 119
    .line 120
    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-static {v7, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-static {v3, v5}, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->searchContacts(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    .line 129
    .line 130
    .line 131
    move-result-object v8

    .line 132
    goto :goto_2

    .line 133
    :cond_4
    const-string/jumbo v7, "mailto"

    .line 134
    .line 135
    .line 136
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v8

    .line 140
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    if-eqz v7, :cond_6

    .line 145
    .line 146
    sget-boolean v7, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    .line 147
    .line 148
    if-eqz v7, :cond_5

    .line 149
    .line 150
    const-string v7, "ValidateNoPeople"

    .line 151
    .line 152
    const-string v8, "checking mailto URI: "

    .line 153
    .line 154
    invoke-static {v8, v3, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    :cond_5
    iget-object v3, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContext:Landroid/content/Context;

    .line 158
    .line 159
    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    sget-object v7, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    .line 164
    .line 165
    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    invoke-static {v7, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    invoke-static {v3, v5}, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->searchContacts(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    .line 174
    .line 175
    .line 176
    move-result-object v8

    .line 177
    goto :goto_2

    .line 178
    :cond_6
    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    .line 179
    .line 180
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v7

    .line 184
    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 185
    .line 186
    .line 187
    move-result v7

    .line 188
    if-eqz v7, :cond_8

    .line 189
    .line 190
    sget-boolean v7, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    .line 191
    .line 192
    if-eqz v7, :cond_7

    .line 193
    .line 194
    const-string v7, "ValidateNoPeople"

    .line 195
    .line 196
    const-string v8, "checking lookup URI: "

    .line 197
    .line 198
    invoke-virtual {v8, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    invoke-static {v7, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    :cond_7
    iget-object v3, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContext:Landroid/content/Context;

    .line 206
    .line 207
    invoke-static {v3, v5}, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->searchContactsAndLookupNumbers(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    .line 208
    .line 209
    .line 210
    move-result-object v8

    .line 211
    goto :goto_2

    .line 212
    :cond_8
    new-instance v8, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    .line 213
    .line 214
    invoke-direct {v8}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;-><init>()V

    .line 215
    .line 216
    .line 217
    const-string/jumbo v7, "name"

    .line 218
    .line 219
    .line 220
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v5

    .line 228
    if-nez v5, :cond_9

    .line 229
    .line 230
    const-string v5, "ValidateNoPeople"

    .line 231
    .line 232
    const-string/jumbo v7, "unsupported URI "

    .line 233
    .line 234
    .line 235
    invoke-virtual {v7, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    .line 241
    .line 242
    :cond_9
    :goto_2
    if-eqz v8, :cond_d

    .line 243
    .line 244
    if-nez v4, :cond_a

    .line 245
    .line 246
    iget-object v3, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    .line 247
    .line 248
    iget-object v3, v3, Lcom/android/server/notification/ValidateNotificationPeople;->mPeopleCache:Landroid/util/LruCache;

    .line 249
    .line 250
    monitor-enter v3

    .line 251
    :try_start_1
    iget-object v4, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    .line 252
    .line 253
    iget-object v4, v4, Lcom/android/server/notification/ValidateNotificationPeople;->mPeopleCache:Landroid/util/LruCache;

    .line 254
    .line 255
    invoke-virtual {v4, v6, v8}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    monitor-exit v3

    .line 259
    goto :goto_3

    .line 260
    :catchall_1
    move-exception p0

    .line 261
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 262
    throw p0

    .line 263
    :cond_a
    :goto_3
    sget-boolean v3, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    .line 264
    .line 265
    if-eqz v3, :cond_b

    .line 266
    .line 267
    const-string v3, "ValidateNoPeople"

    .line 268
    .line 269
    new-instance v4, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    const-string v5, "lookup contactAffinity is "

    .line 272
    .line 273
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v8}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->getAffinity()F

    .line 277
    .line 278
    .line 279
    move-result v5

    .line 280
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v4

    .line 287
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .line 289
    .line 290
    :cond_b
    iget v3, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    .line 291
    .line 292
    invoke-virtual {v8}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->getAffinity()F

    .line 293
    .line 294
    .line 295
    move-result v4

    .line 296
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    .line 297
    .line 298
    .line 299
    move-result v3

    .line 300
    iput v3, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    .line 301
    .line 302
    iget-object v3, v8, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mPhoneNumbers:Landroid/util/ArraySet;

    .line 303
    .line 304
    if-eqz v3, :cond_1

    .line 305
    .line 306
    iget-object v3, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mPhoneNumbers:Landroid/util/ArraySet;

    .line 307
    .line 308
    if-nez v3, :cond_c

    .line 309
    .line 310
    new-instance v3, Landroid/util/ArraySet;

    .line 311
    .line 312
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 313
    .line 314
    .line 315
    iput-object v3, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mPhoneNumbers:Landroid/util/ArraySet;

    .line 316
    .line 317
    :cond_c
    iget-object v3, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mPhoneNumbers:Landroid/util/ArraySet;

    .line 318
    .line 319
    iget-object v4, v8, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mPhoneNumbers:Landroid/util/ArraySet;

    .line 320
    .line 321
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 322
    .line 323
    .line 324
    goto/16 :goto_0

    .line 325
    .line 326
    :cond_d
    sget-boolean v3, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    .line 327
    .line 328
    if-eqz v3, :cond_1

    .line 329
    .line 330
    const-string v3, "ValidateNoPeople"

    .line 331
    .line 332
    const-string v4, "lookupResult is null"

    .line 333
    .line 334
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    .line 336
    .line 337
    goto/16 :goto_0

    .line 338
    .line 339
    :goto_4
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 340
    throw p0

    .line 341
    :cond_e
    sget-boolean v2, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    .line 342
    .line 343
    if-eqz v2, :cond_f

    .line 344
    .line 345
    const-string v2, "ValidateNoPeople"

    .line 346
    .line 347
    new-instance v3, Ljava/lang/StringBuilder;

    .line 348
    .line 349
    const-string v6, "Validation finished in "

    .line 350
    .line 351
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 355
    .line 356
    .line 357
    move-result-wide v6

    .line 358
    sub-long/2addr v6, v0

    .line 359
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    const-string/jumbo v0, "ms"

    .line 363
    .line 364
    .line 365
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    .line 374
    .line 375
    :cond_f
    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mRecord:Lcom/android/server/notification/NotificationRecord;

    .line 376
    .line 377
    if-eqz v0, :cond_12

    .line 378
    .line 379
    iget-object v1, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    .line 380
    .line 381
    iget-object v1, v1, Lcom/android/server/notification/ValidateNotificationPeople;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    .line 382
    .line 383
    iget p0, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    .line 384
    .line 385
    const/4 v2, 0x0

    .line 386
    cmpl-float v2, p0, v2

    .line 387
    .line 388
    if-lez v2, :cond_10

    .line 389
    .line 390
    move v2, v4

    .line 391
    goto :goto_5

    .line 392
    :cond_10
    move v2, v5

    .line 393
    :goto_5
    const/high16 v3, 0x3f800000    # 1.0f

    .line 394
    .line 395
    cmpl-float p0, p0, v3

    .line 396
    .line 397
    if-nez p0, :cond_11

    .line 398
    .line 399
    goto :goto_6

    .line 400
    :cond_11
    move v4, v5

    .line 401
    :goto_6
    invoke-virtual {v1, v0, v2, v4, v5}, Lcom/android/server/notification/NotificationUsageStats;->registerPeopleAffinity(Lcom/android/server/notification/NotificationRecord;ZZZ)V

    .line 402
    .line 403
    .line 404
    :cond_12
    return-void
.end method
