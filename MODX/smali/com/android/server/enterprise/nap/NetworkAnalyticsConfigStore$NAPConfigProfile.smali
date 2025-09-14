.class public final Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final adminUid:I

.field public final flags:I

.field public flowTypeForProfile:I

.field public intervalValueForProfile:I

.field public final jsonString:Ljava/lang/String;

.field public final opUserId:I

.field public final packageName:Ljava/lang/String;

.field public final packageSignature:Ljava/lang/String;

.field public final profileName:Ljava/lang/String;

.field public userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget-object v0, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->profileName:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->profileName:Ljava/lang/String;

    .line 8
    iget-object v0, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->packageName:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->packageName:Ljava/lang/String;

    .line 12
    iget-object v0, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->packageSignature:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->packageSignature:Ljava/lang/String;

    .line 16
    iget-object v0, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->jsonString:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->jsonString:Ljava/lang/String;

    .line 20
    iget v0, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->adminUid:I

    .line 22
    iput v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->adminUid:I

    .line 24
    iget v0, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->userId:I

    .line 26
    iput v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->userId:I

    .line 28
    iget v0, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->opUserId:I

    .line 30
    iput v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->opUserId:I

    .line 32
    iget v0, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->flags:I

    .line 34
    iput v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->flags:I

    .line 36
    iget v0, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->flowTypeForProfile:I

    .line 38
    iput v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->flowTypeForProfile:I

    .line 40
    iget p1, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->intervalValueForProfile:I

    .line 42
    iput p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->intervalValueForProfile:I

    .line 44
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "profileName="

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->profileName:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, ",packageName="

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->packageName:Ljava/lang/String;

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    const-string v1, ",adminUid="

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->adminUid:I

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    const-string v1, ",flags="

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->flags:I

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    const-string v1, ",userId="

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->userId:I

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    const-string v1, ",opUserId="

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->opUserId:I

    .line 61
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 68
    return-object p0
.end method
