.class Lcom/android/server/ResetReasonNP;
.super Lcom/android/server/ResetReasonCode;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field private boot_reason:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/server/ResetReasonCode;-><init>()V

    .line 4
    const-string/jumbo v0, "sys.boot.reason"

    .line 7
    const-string/jumbo v1, "unknown"

    .line 10
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    const-string v1, ","

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/android/server/ResetReasonNP;->boot_reason:[Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public addCauseContents()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/ResetReasonNP;->boot_reason:[Ljava/lang/String;

    .line 3
    const/4 v0, 0x0

    .line 4
    aget-object p0, p0, v0

    .line 6
    return-object p0
.end method

.method public addStackContents()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/ResetReasonNP;->boot_reason:[Ljava/lang/String;

    .line 3
    array-length v0, p0

    .line 4
    const/4 v1, 0x1

    .line 5
    if-le v0, v1, :cond_0

    .line 7
    aget-object p0, p0, v1

    .line 9
    return-object p0

    .line 10
    :cond_0
    const-string p0, ""

    .line 12
    return-object p0
.end method
