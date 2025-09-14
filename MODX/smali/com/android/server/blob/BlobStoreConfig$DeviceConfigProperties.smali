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

    .line 3
    const-wide/16 v1, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 8
    move-result-wide v1

    .line 9
    sput-wide v1, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_IDLE_JOB_PERIOD_MS:J

    .line 11
    sput-wide v1, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->IDLE_JOB_PERIOD_MS:J

    .line 13
    const-wide/16 v1, 0x7

    .line 15
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 18
    move-result-wide v0

    .line 19
    sput-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_SESSION_EXPIRY_TIMEOUT_MS:J

    .line 21
    sput-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->SESSION_EXPIRY_TIMEOUT_MS:J

    .line 23
    sget-object v0, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    .line 25
    const-wide/16 v1, 0x12c

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/util/DataUnit;->toBytes(J)J

    .line 30
    move-result-wide v0

    .line 31
    sput-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_TOTAL_BYTES_PER_APP_LIMIT_FLOOR:J

    .line 33
    sput-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->TOTAL_BYTES_PER_APP_LIMIT_FLOOR:J

    .line 35
    const v0, 0x3c23d70a    # 0.01f

    .line 38
    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->TOTAL_BYTES_PER_APP_LIMIT_FRACTION:F

    .line 40
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 42
    const-wide/16 v1, 0x6

    .line 44
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 47
    move-result-wide v3

    .line 48
    sput-wide v3, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_LEASE_ACQUISITION_WAIT_DURATION_MS:J

    .line 50
    sput-wide v3, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->LEASE_ACQUISITION_WAIT_DURATION_MS:J

    .line 52
    const-wide/16 v3, 0x30

    .line 54
    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 57
    move-result-wide v3

    .line 58
    sput-wide v3, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_COMMIT_COOL_OFF_DURATION_MS:J

    .line 60
    sput-wide v3, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->COMMIT_COOL_OFF_DURATION_MS:J

    .line 62
    const/4 v3, 0x0

    .line 63
    sput-boolean v3, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->USE_REVOCABLE_FD_FOR_READS:Z

    .line 65
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 68
    move-result-wide v0

    .line 69
    sput-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_DELETE_ON_LAST_LEASE_DELAY_MS:J

    .line 71
    sput-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DELETE_ON_LAST_LEASE_DELAY_MS:J

    .line 73
    const/16 v0, 0xfa

    .line 75
    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_ACTIVE_SESSIONS:I

    .line 77
    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_ACTIVE_SESSIONS:I

    .line 79
    const/16 v0, 0x3e8

    .line 81
    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_COMMITTED_BLOBS:I

    .line 83
    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_COMMITTED_BLOBS:I

    .line 85
    const/16 v0, 0x1f4

    .line 87
    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_LEASED_BLOBS:I

    .line 89
    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_LEASED_BLOBS:I

    .line 91
    const/16 v0, 0x12c

    .line 93
    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_BLOB_ACCESS_PERMITTED_PACKAGES:I

    .line 95
    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_BLOB_ACCESS_PERMITTED_PACKAGES:I

    .line 97
    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_LEASE_DESC_CHAR_LIMIT:I

    .line 99
    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->LEASE_DESC_CHAR_LIMIT:I

    .line 101
    return-void
.end method
