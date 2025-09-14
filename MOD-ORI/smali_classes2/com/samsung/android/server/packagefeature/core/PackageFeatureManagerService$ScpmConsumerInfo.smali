.class public final Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService$ScpmConsumerInfo;
.super Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final VERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService$ScpmConsumerInfo;->VERSION:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method
