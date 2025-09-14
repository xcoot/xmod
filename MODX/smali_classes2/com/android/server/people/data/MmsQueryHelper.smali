.class public final Lcom/android/server/people/data/MmsQueryHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final MSG_BOX_TO_EVENT_TYPE:Landroid/util/SparseIntArray;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mCurrentCountryIso:Ljava/lang/String;

.field public final mEventConsumer:Ljava/util/function/BiConsumer;

.field public mLastMessageTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/people/data/MmsQueryHelper;->MSG_BOX_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    const/16 v2, 0x9

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    const/16 v2, 0x8

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/BiConsumer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/people/data/MmsQueryHelper;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/people/data/MmsQueryHelper;->mEventConsumer:Ljava/util/function/BiConsumer;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/android/server/people/data/Utils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/android/server/people/data/MmsQueryHelper;->mCurrentCountryIso:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final getMmsAddress(ILjava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-static {p2}, Landroid/provider/Telephony$Mms$Addr;->getAddrUriForMessage(Ljava/lang/String;)Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    const-string p2, "address"

    .line 6
    .line 7
    const-string/jumbo v6, "type"

    .line 8
    .line 9
    .line 10
    filled-new-array {p2, v6}, [Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    iget-object v0, p0, Lcom/android/server/people/data/MmsQueryHelper;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v4, 0x0

    .line 21
    const/4 v5, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    :try_start_0
    const-string p0, "MmsQueryHelper"

    .line 31
    .line 32
    const-string p1, "Cursor is null when querying MMS address table."

    .line 33
    .line 34
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-object v1

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    move-object v2, v1

    .line 46
    :cond_2
    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_5

    .line 51
    .line 52
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    const/4 v4, 0x1

    .line 61
    if-ne p1, v4, :cond_3

    .line 62
    .line 63
    const/16 v4, 0x89

    .line 64
    .line 65
    if-eq v3, v4, :cond_4

    .line 66
    .line 67
    :cond_3
    const/4 v4, 0x2

    .line 68
    if-ne p1, v4, :cond_2

    .line 69
    .line 70
    const/16 v4, 0x97

    .line 71
    .line 72
    if-ne v3, v4, :cond_2

    .line 73
    .line 74
    :cond_4
    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    goto :goto_0

    .line 83
    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 84
    .line 85
    .line 86
    invoke-static {v2}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-nez p1, :cond_6

    .line 91
    .line 92
    return-object v1

    .line 93
    :cond_6
    iget-object p0, p0, Lcom/android/server/people/data/MmsQueryHelper;->mCurrentCountryIso:Ljava/lang/String;

    .line 94
    .line 95
    invoke-static {v2, p0}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    return-object p0

    .line 100
    :goto_1
    if-eqz v0, :cond_7

    .line 101
    .line 102
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :catchall_1
    move-exception p1

    .line 107
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 108
    .line 109
    .line 110
    :cond_7
    :goto_2
    throw p0
.end method
