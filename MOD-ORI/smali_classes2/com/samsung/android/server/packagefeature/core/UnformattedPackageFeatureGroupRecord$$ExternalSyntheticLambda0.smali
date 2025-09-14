.class public final synthetic Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    iput p4, p0, Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord$$ExternalSyntheticLambda0;->f$3:I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord$$ExternalSyntheticLambda0;->f$2:I

    .line 6
    .line 7
    iget v3, p0, Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord$$ExternalSyntheticLambda0;->f$3:I

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string/jumbo v5, "to propagate to "

    .line 17
    .line 18
    .line 19
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, " callback"

    .line 26
    .line 27
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    if-le v2, v1, :cond_0

    .line 32
    .line 33
    const-string v1, "("

    .line 34
    .line 35
    const-string v5, "/"

    .line 36
    .line 37
    const-string v6, ")"

    .line 38
    .line 39
    invoke-static {v3, v2, v1, v5, v6}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const-string v1, ""

    .line 45
    .line 46
    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v1, " for "

    .line 50
    .line 51
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget-object v0, v0, Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord;->mGroupName:Ljava/lang/String;

    .line 55
    .line 56
    const-string v1, ", reason="

    .line 57
    .line 58
    const-string v2, ", Unformatted"

    .line 59
    .line 60
    invoke-static {v4, v0, v1, p0, v2}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0
.end method
