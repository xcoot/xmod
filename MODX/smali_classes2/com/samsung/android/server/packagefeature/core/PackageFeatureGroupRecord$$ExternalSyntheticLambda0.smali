.class public final synthetic Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Lcom/samsung/android/server/packagefeature/PackageFeatureData;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;Ljava/lang/String;IILjava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    iput p4, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$$ExternalSyntheticLambda0;->f$3:I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$$ExternalSyntheticLambda0;->f$5:Lcom/samsung/android/server/packagefeature/PackageFeatureData;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$$ExternalSyntheticLambda0;->f$2:I

    .line 6
    .line 7
    iget v3, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$$ExternalSyntheticLambda0;->f$3:I

    .line 8
    .line 9
    iget-object v4, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$$ExternalSyntheticLambda0;->f$5:Lcom/samsung/android/server/packagefeature/PackageFeatureData;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance v5, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string/jumbo v6, "to propagate to "

    .line 19
    .line 20
    .line 21
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, " callback"

    .line 28
    .line 29
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    if-le v2, v1, :cond_0

    .line 34
    .line 35
    const-string v1, "("

    .line 36
    .line 37
    const-string v6, "/"

    .line 38
    .line 39
    const-string v7, ")"

    .line 40
    .line 41
    invoke-static {v3, v2, v1, v6, v7}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const-string v1, ""

    .line 47
    .line 48
    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, " for "

    .line 52
    .line 53
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-object v0, v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroup:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mName:Ljava/lang/String;

    .line 59
    .line 60
    const-string v1, ", reason="

    .line 61
    .line 62
    const-string v2, ", size="

    .line 63
    .line 64
    invoke-static {v5, v0, v1, v4, v2}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0
.end method
