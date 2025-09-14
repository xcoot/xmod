.class public final Lcom/android/server/pm/ApexManager$ScanResult;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final apexInfo:Landroid/apex/ApexInfo;

.field public final packageName:Ljava/lang/String;

.field public final pkg:Lcom/android/server/pm/pkg/AndroidPackage;


# direct methods
.method public constructor <init>(Landroid/apex/ApexInfo;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/ApexManager$ScanResult;->apexInfo:Landroid/apex/ApexInfo;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/ApexManager$ScanResult;->pkg:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/ApexManager$ScanResult;->packageName:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method
