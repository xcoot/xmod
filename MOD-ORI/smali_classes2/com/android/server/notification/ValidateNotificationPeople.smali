.class public Lcom/android/server/notification/ValidateNotificationPeople;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# static fields
.field public static final DEBUG:Z

.field public static final LOOKUP_PROJECTION:[Ljava/lang/String;

.field static final PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

.field public static final VERBOSE:Z


# instance fields
.field public mBaseContext:Landroid/content/Context;

.field public mEnabled:Z

.field public mEvictionCount:I

.field public mHandler:Landroid/os/Handler;

.field public mObserver:Lcom/android/server/notification/ValidateNotificationPeople$1;

.field public mPeopleCache:Landroid/util/LruCache;

.field public mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

.field public mUserToContextMap:Ljava/util/Map;

.field public mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    const-string v1, "ValidateNoPeople"

    .line 3
    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    .line 9
    .line 10
    const/4 v0, 0x3

    .line 11
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sput-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    .line 16
    .line 17
    const-string/jumbo v0, "starred"

    .line 18
    .line 19
    .line 20
    const-string v1, "has_phone_number"

    .line 21
    .line 22
    const-string v2, "_id"

    .line 23
    .line 24
    const-string v3, "lookup"

    .line 25
    .line 26
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lcom/android/server/notification/ValidateNotificationPeople;->LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 31
    .line 32
    const-string v0, "data4"

    .line 33
    .line 34
    const-string v1, "data1"

    .line 35
    .line 36
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sput-object v0, Lcom/android/server/notification/ValidateNotificationPeople;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 41
    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getCacheKey(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p0, ":"

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public static getExtraPeople(Landroid/os/Bundle;)[Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "android.people.list"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/android/server/notification/ValidateNotificationPeople;->getExtraPeopleForKey(Landroid/os/Bundle;Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "android.people"

    .line 8
    .line 9
    invoke-static {p0, v1}, Lcom/android/server/notification/ValidateNotificationPeople;->getExtraPeopleForKey(Landroid/os/Bundle;Ljava/lang/String;)[Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_0
    if-nez v0, :cond_1

    .line 17
    .line 18
    move-object v0, p0

    .line 19
    goto :goto_2

    .line 20
    :cond_1
    new-instance v1, Landroid/util/ArraySet;

    .line 21
    .line 22
    array-length v2, p0

    .line 23
    array-length v3, v0

    .line 24
    add-int/2addr v2, v3

    .line 25
    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 26
    .line 27
    .line 28
    array-length v2, p0

    .line 29
    const/4 v3, 0x0

    .line 30
    move v4, v3

    .line 31
    :goto_0
    if-ge v4, v2, :cond_2

    .line 32
    .line 33
    aget-object v5, p0, v4

    .line 34
    .line 35
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    add-int/lit8 v4, v4, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    array-length p0, v0

    .line 42
    :goto_1
    if-ge v3, p0, :cond_3

    .line 43
    .line 44
    aget-object v2, v0, v3

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    add-int/lit8 v3, v3, 0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    move-object v0, p0

    .line 59
    check-cast v0, [Ljava/lang/String;

    .line 60
    .line 61
    :goto_2
    return-object v0
.end method

.method public static getExtraPeopleForKey(Landroid/os/Bundle;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    instance-of p1, p0, [Ljava/lang/String;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    check-cast p0, [Ljava/lang/String;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    instance-of p1, p0, Ljava/util/ArrayList;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz p1, :cond_6

    .line 17
    .line 18
    check-cast p0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_1
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    instance-of p1, p1, Ljava/lang/String;

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    new-array p1, p1, [Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    check-cast p0, [Ljava/lang/String;

    .line 46
    .line 47
    return-object p0

    .line 48
    :cond_2
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    instance-of p1, p1, Ljava/lang/CharSequence;

    .line 53
    .line 54
    if-eqz p1, :cond_4

    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    new-array v0, p1, [Ljava/lang/String;

    .line 61
    .line 62
    :goto_0
    if-ge v1, p1, :cond_3

    .line 63
    .line 64
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Ljava/lang/CharSequence;

    .line 69
    .line 70
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    aput-object v2, v0, v1

    .line 75
    .line 76
    add-int/lit8 v1, v1, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    return-object v0

    .line 80
    :cond_4
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    instance-of p1, p1, Landroid/app/Person;

    .line 85
    .line 86
    if-eqz p1, :cond_5

    .line 87
    .line 88
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    new-array v0, p1, [Ljava/lang/String;

    .line 93
    .line 94
    :goto_1
    if-ge v1, p1, :cond_5

    .line 95
    .line 96
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    check-cast v2, Landroid/app/Person;

    .line 101
    .line 102
    invoke-virtual {v2}, Landroid/app/Person;->resolveToLegacyUri()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    aput-object v2, v0, v1

    .line 107
    .line 108
    add-int/lit8 v1, v1, 0x1

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_5
    return-object v0

    .line 112
    :cond_6
    instance-of p1, p0, Ljava/lang/String;

    .line 113
    .line 114
    if-eqz p1, :cond_7

    .line 115
    .line 116
    check-cast p0, Ljava/lang/String;

    .line 117
    .line 118
    filled-new-array {p0}, [Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    return-object p0

    .line 123
    :cond_7
    instance-of p1, p0, [C

    .line 124
    .line 125
    if-eqz p1, :cond_8

    .line 126
    .line 127
    new-instance p1, Ljava/lang/String;

    .line 128
    .line 129
    check-cast p0, [C

    .line 130
    .line 131
    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    .line 132
    .line 133
    .line 134
    filled-new-array {p1}, [Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    return-object p0

    .line 139
    :cond_8
    instance-of p1, p0, Ljava/lang/CharSequence;

    .line 140
    .line 141
    if-eqz p1, :cond_9

    .line 142
    .line 143
    check-cast p0, Ljava/lang/CharSequence;

    .line 144
    .line 145
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    filled-new-array {p0}, [Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    return-object p0

    .line 154
    :cond_9
    instance-of p1, p0, [Ljava/lang/CharSequence;

    .line 155
    .line 156
    if-eqz p1, :cond_a

    .line 157
    .line 158
    check-cast p0, [Ljava/lang/CharSequence;

    .line 159
    .line 160
    array-length p1, p0

    .line 161
    new-array v0, p1, [Ljava/lang/String;

    .line 162
    .line 163
    :goto_2
    if-ge v1, p1, :cond_a

    .line 164
    .line 165
    aget-object v2, p0, v1

    .line 166
    .line 167
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    aput-object v2, v0, v1

    .line 172
    .line 173
    add-int/lit8 v1, v1, 0x1

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_a
    return-object v0
.end method


# virtual methods
.method public final getContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mUserToContextMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/content/Context;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mBaseContext:Landroid/content/Context;

    .line 20
    .line 21
    const-string v2, "android"

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-virtual {v1, v2, v3, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object p0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mUserToContextMap:Ljava/util/Map;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception p0

    .line 43
    const-string p1, "ValidateNoPeople"

    .line 44
    .line 45
    const-string v1, "failed to create package context for lookups"

    .line 46
    .line 47
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    .line 49
    .line 50
    :cond_0
    :goto_0
    return-object v0
.end method

.method public initForTests(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;Landroid/util/LruCache;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mUserToContextMap:Ljava/util/Map;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mBaseContext:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    .line 11
    .line 12
    iput-object p3, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mPeopleCache:Landroid/util/LruCache;

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mEnabled:Z

    .line 16
    .line 17
    return-void
.end method

.method public final initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "Initializing  "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "."

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "ValidateNoPeople"

    .line 33
    .line 34
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    .line 38
    .line 39
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mUserToContextMap:Ljava/util/Map;

    .line 43
    .line 44
    iput-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mBaseContext:Landroid/content/Context;

    .line 45
    .line 46
    iput-object p2, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    .line 47
    .line 48
    new-instance p2, Landroid/util/LruCache;

    .line 49
    .line 50
    const/16 v0, 0xc8

    .line 51
    .line 52
    invoke-direct {p2, v0}, Landroid/util/LruCache;-><init>(I)V

    .line 53
    .line 54
    .line 55
    iput-object p2, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mPeopleCache:Landroid/util/LruCache;

    .line 56
    .line 57
    iget-object p2, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mBaseContext:Landroid/content/Context;

    .line 58
    .line 59
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    const-string/jumbo v0, "validate_notification_people_enabled"

    .line 64
    .line 65
    .line 66
    const/4 v1, 0x1

    .line 67
    invoke-static {p2, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    if-ne v1, p2, :cond_1

    .line 72
    .line 73
    move p2, v1

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    const/4 p2, 0x0

    .line 76
    :goto_0
    iput-boolean p2, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mEnabled:Z

    .line 77
    .line 78
    if-eqz p2, :cond_2

    .line 79
    .line 80
    new-instance p2, Landroid/os/Handler;

    .line 81
    .line 82
    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    .line 83
    .line 84
    .line 85
    iput-object p2, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mHandler:Landroid/os/Handler;

    .line 86
    .line 87
    new-instance p2, Lcom/android/server/notification/ValidateNotificationPeople$1;

    .line 88
    .line 89
    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mHandler:Landroid/os/Handler;

    .line 90
    .line 91
    invoke-direct {p2, p0, v0, p1}, Lcom/android/server/notification/ValidateNotificationPeople$1;-><init>(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/os/Handler;Landroid/content/Context;)V

    .line 92
    .line 93
    .line 94
    iput-object p2, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mObserver:Lcom/android/server/notification/ValidateNotificationPeople$1;

    .line 95
    .line 96
    iget-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mBaseContext:Landroid/content/Context;

    .line 97
    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    sget-object p2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 103
    .line 104
    iget-object p0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mObserver:Lcom/android/server/notification/ValidateNotificationPeople$1;

    .line 105
    .line 106
    const/4 v0, -0x1

    .line 107
    invoke-virtual {p1, p2, v1, p0, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 108
    .line 109
    .line 110
    :cond_2
    return-void
.end method

.method public final isInExceptionContacts(Landroid/os/UserHandle;Landroid/os/Bundle;Ljava/util/List;)Z
    .locals 13

    .line 1
    move-object/from16 v1, p3

    .line 2
    .line 3
    invoke-static {p2}, Lcom/android/server/notification/ValidateNotificationPeople;->getExtraPeople(Landroid/os/Bundle;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v2, :cond_c

    .line 9
    .line 10
    move-object v4, p0

    .line 11
    iget-object v0, v4, Lcom/android/server/notification/ValidateNotificationPeople;->mBaseContext:Landroid/content/Context;

    .line 12
    .line 13
    const-string/jumbo v5, "phone"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    if-nez v5, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    if-nez v5, :cond_0

    .line 35
    .line 36
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    :cond_0
    :goto_0
    move-object v11, v5

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    goto :goto_0

    .line 55
    :goto_1
    move v5, v3

    .line 56
    :goto_2
    array-length v0, v2

    .line 57
    const/4 v12, 0x1

    .line 58
    if-ge v5, v0, :cond_6

    .line 59
    .line 60
    aget-object v0, v2, v5

    .line 61
    .line 62
    if-nez v0, :cond_2

    .line 63
    .line 64
    goto :goto_4

    .line 65
    :cond_2
    const-string v6, ":"

    .line 66
    .line 67
    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-eqz v0, :cond_5

    .line 72
    .line 73
    array-length v6, v0

    .line 74
    const/4 v7, 0x2

    .line 75
    if-ge v6, v7, :cond_3

    .line 76
    .line 77
    goto :goto_4

    .line 78
    :cond_3
    :try_start_0
    aget-object v0, v0, v12

    .line 79
    .line 80
    const-string v6, "UTF-8"

    .line 81
    .line 82
    invoke-static {v0, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    goto :goto_3

    .line 87
    :catch_0
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 89
    .line 90
    .line 91
    const/4 v0, 0x0

    .line 92
    :goto_3
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    if-eqz v7, :cond_5

    .line 101
    .line 102
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    check-cast v7, Ljava/lang/String;

    .line 107
    .line 108
    const-string v8, ";"

    .line 109
    .line 110
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    array-length v8, v7

    .line 115
    if-le v8, v12, :cond_4

    .line 116
    .line 117
    aget-object v7, v7, v12

    .line 118
    .line 119
    invoke-static {v0, v7, v11}, Landroid/telephony/PhoneNumberUtils;->areSamePhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 120
    .line 121
    .line 122
    move-result v7

    .line 123
    if-eqz v7, :cond_4

    .line 124
    .line 125
    return v12

    .line 126
    :cond_5
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 130
    .line 131
    .line 132
    move-result-wide v5

    .line 133
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    new-array v9, v12, [F

    .line 138
    .line 139
    new-instance v0, Landroid/util/ArraySet;

    .line 140
    .line 141
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ValidateNotificationPeople;->getContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    if-eqz v5, :cond_7

    .line 149
    .line 150
    const/4 v8, 0x0

    .line 151
    move-object v4, p0

    .line 152
    move-object v7, p2

    .line 153
    move-object v10, v0

    .line 154
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/notification/ValidateNotificationPeople;->validatePeople(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;[FLandroid/util/ArraySet;)Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;

    .line 155
    .line 156
    .line 157
    :cond_7
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    :cond_8
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    if-eqz v2, :cond_c

    .line 166
    .line 167
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    check-cast v2, Ljava/lang/String;

    .line 172
    .line 173
    const-string v4, "isInExceptionContacts phone = "

    .line 174
    .line 175
    const-string v5, "ValidateNoPeople"

    .line 176
    .line 177
    invoke-static {v4, v2, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    if-nez v2, :cond_9

    .line 181
    .line 182
    goto :goto_5

    .line 183
    :cond_9
    move v4, v3

    .line 184
    :goto_6
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    .line 185
    .line 186
    .line 187
    move-result v6

    .line 188
    if-ge v4, v6, :cond_8

    .line 189
    .line 190
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    if-nez v6, :cond_a

    .line 195
    .line 196
    goto :goto_7

    .line 197
    :cond_a
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    check-cast v6, Ljava/lang/String;

    .line 202
    .line 203
    invoke-static {v2, v6, v11}, Landroid/telephony/PhoneNumberUtils;->areSamePhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 204
    .line 205
    .line 206
    move-result v6

    .line 207
    if-eqz v6, :cond_b

    .line 208
    .line 209
    const-string v0, "isInExceptionContacts return true"

    .line 210
    .line 211
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    return v12

    .line 215
    :cond_b
    :goto_7
    add-int/lit8 v4, v4, 0x1

    .line 216
    .line 217
    goto :goto_6

    .line 218
    :cond_c
    return v3
.end method

.method public final process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mEnabled:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "ValidateNoPeople"

    .line 5
    .line 6
    sget-boolean v3, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    const-string p0, "disabled"

    .line 13
    .line 14
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    :cond_0
    return-object v1

    .line 18
    :cond_1
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_3

    .line 25
    .line 26
    if-eqz v3, :cond_2

    .line 27
    .line 28
    const-string/jumbo p0, "skipping empty notification"

    .line 29
    .line 30
    .line 31
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :cond_2
    return-object v1

    .line 35
    :cond_3
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/4 v4, -0x1

    .line 42
    if-ne v0, v4, :cond_5

    .line 43
    .line 44
    if-eqz v3, :cond_4

    .line 45
    .line 46
    const-string/jumbo p0, "skipping global notification"

    .line 47
    .line 48
    .line 49
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    :cond_4
    return-object v1

    .line 53
    :cond_5
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p0, v0}, Lcom/android/server/notification/ValidateNotificationPeople;->getContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-nez v0, :cond_7

    .line 64
    .line 65
    if-eqz v3, :cond_6

    .line 66
    .line 67
    const-string/jumbo p0, "skipping notification that lacks a context"

    .line 68
    .line 69
    .line 70
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    :cond_6
    return-object v1

    .line 74
    :cond_7
    invoke-virtual {p0, v0, p1}, Lcom/android/server/notification/ValidateNotificationPeople;->validatePeople(Landroid/content/Context;Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0
.end method

.method public final setConfig(Lcom/android/server/notification/RankingConfig;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 2
    .line 3
    return-void
.end method

.method public validatePeople(Landroid/content/Context;Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .locals 10

    .line 36
    iget-object v0, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 37
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 38
    iget-object v0, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 39
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 40
    iget-object v4, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const/4 v0, 0x1

    .line 41
    new-array v8, v0, [F

    .line 42
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .line 43
    iget-object v5, p2, Lcom/android/server/notification/NotificationRecord;->mPeopleOverride:Ljava/util/ArrayList;

    move-object v1, p0

    move-object v2, p1

    move-object v6, v8

    move-object v7, v9

    .line 44
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/notification/ValidateNotificationPeople;->validatePeople(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;[FLandroid/util/ArraySet;)Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;

    move-result-object p1

    const/4 v1, 0x0

    .line 45
    aget v2, v8, v1

    .line 46
    iput v2, p2, Lcom/android/server/notification/NotificationRecord;->mContactAffinity:F

    .line 47
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 48
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    iget-object v3, p2, Lcom/android/server/notification/NotificationRecord;->mPhoneNumbers:Landroid/util/ArraySet;

    if-nez v3, :cond_1

    .line 50
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p2, Lcom/android/server/notification/NotificationRecord;->mPhoneNumbers:Landroid/util/ArraySet;

    .line 51
    :cond_1
    iget-object v3, p2, Lcom/android/server/notification/NotificationRecord;->mPhoneNumbers:Landroid/util/ArraySet;

    invoke-virtual {v3, v9}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    :cond_2
    :goto_0
    if-nez p1, :cond_5

    .line 52
    iget-object p0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_3

    move v3, v0

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v4

    if-nez v2, :cond_4

    move v1, v0

    :cond_4
    invoke-virtual {p0, p2, v3, v1, v0}, Lcom/android/server/notification/NotificationUsageStats;->registerPeopleAffinity(Lcom/android/server/notification/NotificationRecord;ZZZ)V

    goto :goto_2

    .line 53
    :cond_5
    iput-object p2, p1, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mRecord:Lcom/android/server/notification/NotificationRecord;

    :goto_2
    return-object p1
.end method

.method public final validatePeople(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;[FLandroid/util/ArraySet;)Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;
    .locals 8

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return-object v0

    .line 1
    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-static {p3}, Lcom/android/server/notification/ValidateNotificationPeople;->getExtraPeople(Landroid/os/Bundle;)[Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 3
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 4
    :cond_1
    sget-boolean p3, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    if-eqz p3, :cond_2

    const-string p3, "ValidateNoPeople"

    const-string p4, "Validating: "

    const-string v2, " for "

    .line 5
    invoke-static {p4, p2, v2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_2
    new-instance p3, Ljava/util/LinkedList;

    invoke-direct {p3}, Ljava/util/LinkedList;-><init>()V

    .line 8
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p4

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    :cond_3
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 9
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0

    .line 10
    :cond_4
    iget-object v5, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mPeopleCache:Landroid/util/LruCache;

    monitor-enter v5

    .line 11
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v6

    invoke-static {v6, v4}, Lcom/android/server/notification/ValidateNotificationPeople;->getCacheKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 12
    iget-object v7, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mPeopleCache:Landroid/util/LruCache;

    invoke-virtual {v7, v6}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    if-eqz v6, :cond_6

    .line 13
    invoke-virtual {v6}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->isExpired()Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_1

    .line 14
    :cond_5
    sget-boolean v4, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    if-eqz v4, :cond_7

    const-string v4, "ValidateNoPeople"

    const-string/jumbo v7, "using cached lookupResult"

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 15
    :cond_6
    :goto_1
    invoke-virtual {p3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_2
    if-eqz v6, :cond_8

    .line 16
    invoke-virtual {v6}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->getAffinity()F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 17
    iget-object v4, v6, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mPhoneNumbers:Landroid/util/ArraySet;

    if-eqz v4, :cond_8

    .line 18
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-lez v6, :cond_8

    .line 19
    invoke-virtual {p6, v4}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 20
    :cond_8
    monitor-exit v5

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    goto :goto_4

    :goto_3
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 21
    :cond_9
    :goto_4
    aput v2, p5, v1

    .line 22
    invoke-virtual {p3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_b

    .line 23
    sget-boolean p0, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    if-eqz p0, :cond_a

    const-string p0, "ValidateNoPeople"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "final affinity: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-object v0

    .line 24
    :cond_b
    sget-boolean p4, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    if-eqz p4, :cond_c

    const-string p4, "ValidateNoPeople"

    const-string p5, "Pending: future work scheduled for: "

    .line 25
    invoke-static {p5, p2, p4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_c
    new-instance p4, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;-><init>(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedList;)V

    return-object p4
.end method
