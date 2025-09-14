.class public final synthetic Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

.field public final synthetic f$1:Landroid/net/Uri;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroid/database/ContentObserver;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/sepunion/SemDeviceInfoManagerService;Landroid/net/Uri;ZLcom/android/server/sepunion/eventdelegator/UnionContentObserver;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda2;->f$1:Landroid/net/Uri;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda2;->f$2:Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda2;->f$3:Landroid/database/ContentObserver;

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda2;->f$4:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda2;->f$1:Landroid/net/Uri;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda2;->f$2:Z

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda2;->f$3:Landroid/database/ContentObserver;

    .line 8
    .line 9
    iget p0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda2;->f$4:I

    .line 10
    .line 11
    sget v4, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->$r8$clinit:I

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object v0, v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method
