.class public abstract Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static COMMIT_COOL_OFF_DURATION_MS:J

.field public static final DEFAULT_COMMIT_COOL_OFF_DURATION_MS:J

.field public static final DEFAULT_DELETE_ON_LAST_LEASE_DELAY_MS:J

.field public static final DEFAULT_IDLE_JOB_PERIOD_MS:J

.field public static final DEFAULT_LEASE_ACQUISITION_WAIT_DURATION_MS:J

.field public static final DEFAULT_LEASE_DESC_CHAR_LIMIT:I

.field public static final DEFAULT_MAX_ACTIVE_SESSIONS:I

.field public static final DEFAULT_MAX_BLOB_ACCESS_PERMITTED_PACKAGES:I

.field public static final DEFAULT_MAX_COMMITTED_BLOBS:I

.field public static final DEFAULT_MAX_LEASED_BLOBS:I

.field public static final DEFAULT_SESSION_EXPIRY_TIMEOUT_MS:J

.field public static final DEFAULT_TOTAL_BYTES_PER_APP_LIMIT_FLOOR:J

.field public static DELETE_ON_LAST_LEASE_DELAY_MS:J

.field public static IDLE_JOB_PERIOD_MS:J

.field public static LEASE_ACQUISITION_WAIT_DURATION_MS:J

.field public static LEASE_DESC_CHAR_LIMIT:I

.field public static MAX_ACTIVE_SESSIONS:I

.field public static MAX_BLOB_ACCESS_PERMITTED_PACKAGES:I

.field public static MAX_COMMITTED_BLOBS:I

.field public static MAX_LEASED_BLOBS:I

.field public static SESSION_EXPIRY_TIMEOUT_MS:J

.field public static TOTAL_BYTES_PER_APP_LIMIT_FLOOR:J

.field public static TOTAL_BYTES_PER_APP_LIMIT_FRACTION:F

.field public static USE_REVOCABLE_FD_FOR_READS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0x1

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    sput-wide v1, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_IDLE_JOB_PERIOD_MS:J

    .line 10
    .line 11
    sput-wide v1, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->IDLE_JOB_PERIOD_MS:J

    .line 12
    .line 13
    const-wide/16 v1, 0x7

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    sput-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_SESSION_EXPIRY_TIMEOUT_MS:J

    .line 20
    .line 21
    sput-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->SESSION_EXPIRY_TIMEOUT_MS:J

    .line 22
    .line 23
    sget-object v0, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    .line 24
    .line 25
    const-wide/16 v1, 0x12c

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/util/DataUnit;->toBytes(J)J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    sput-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_TOTAL_BYTES_PER_APP_LIMIT_FLOOR:J

    .line 32
    .line 33
    sput-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->TOTAL_BYTES_PER_APP_LIMIT_FLOOR:J

    .line 34
    .line 35
    const v0, 0x3c23d70a    # 0.01f

    .line 36
    .line 37
    .line 38
    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->TOTAL_BYTES_PER_APP_LIMIT_FRACTION:F

    .line 39
    .line 40
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 41
    .line 42
    const-wide/16 v1, 0x6

    .line 43
    .line 44
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 45
    .line 46
    .line 47
    move-result-wide v3

    .line 48
    sput-wide v3, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_LEASE_ACQUISITION_WAIT_DURATION_MS:J

    .line 49
    .line 50
    sput-wide v3, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->LEASE_ACQUISITION_WAIT_DURATION_MS:J

    .line 51
    .line 52
    const-wide/16 v3, 0x30

    .line 53
    .line 54
    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 55
    .line 56
    .line 57
    move-result-wide v3

    .line 58
    sput-wide v3, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_COMMIT_COOL_OFF_DURATION_MS:J

    .line 59
    .line 60
    sput-wide v3, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->COMMIT_COOL_OFF_DURATION_MS:J

    .line 61
    .line 62
    const/4 v3, 0x0

    .line 63
    sput-boolean v3, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->USE_REVOCABLE_FD_FOR_READS:Z

    .line 64
    .line 65
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 66
    .line 67
    .line 68
    move-result-wide v0

    .line 69
    sput-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_DELETE_ON_LAST_LEASE_DELAY_MS:J

    .line 70
    .line 71
    sput-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DELETE_ON_LAST_LEASE_DELAY_MS:J

    .line 72
    .line 73
    const/16 v0, 0xfa

    .line 74
    .line 75
    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_ACTIVE_SESSIONS:I

    .line 76
    .line 77
    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_ACTIVE_SESSIONS:I

    .line 78
    .line 79
    const/16 v0, 0x3e8

    .line 80
    .line 81
    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_COMMITTED_BLOBS:I

    .line 82
    .line 83
    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_COMMITTED_BLOBS:I

    .line 84
    .line 85
    const/16 v0, 0x1f4

    .line 86
    .line 87
    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_LEASED_BLOBS:I

    .line 88
    .line 89
    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_LEASED_BLOBS:I

    .line 90
    .line 91
    const/16 v0, 0x12c

    .line 92
    .line 93
    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_BLOB_ACCESS_PERMITTED_PACKAGES:I

    .line 94
    .line 95
    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_BLOB_ACCESS_PERMITTED_PACKAGES:I

    .line 96
    .line 97
    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_LEASE_DESC_CHAR_LIMIT:I

    .line 98
    .line 99
    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->LEASE_DESC_CHAR_LIMIT:I

    .line 100
    .line 101
    return-void
.end method
