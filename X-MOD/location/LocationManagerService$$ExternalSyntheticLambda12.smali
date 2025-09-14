.class public final synthetic Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/location/LocationManagerInternal$LocationPackageTagsListener;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/os/PackageTagsList;


# direct methods
.method public synthetic constructor <init>(Landroid/location/LocationManagerInternal$LocationPackageTagsListener;ILandroid/os/PackageTagsList;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda12;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda12;->f$0:Landroid/location/LocationManagerInternal$LocationPackageTagsListener;

    .line 5
    iput p2, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda12;->f$1:I

    .line 7
    iput-object p3, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda12;->f$2:Landroid/os/PackageTagsList;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda12;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda12;->f$0:Landroid/location/LocationManagerInternal$LocationPackageTagsListener;

    .line 8
    iget v1, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda12;->f$1:I

    .line 10
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda12;->f$2:Landroid/os/PackageTagsList;

    .line 12
    invoke-interface {v0, v1, p0}, Landroid/location/LocationManagerInternal$LocationPackageTagsListener;->onLocationPackageTagsChanged(ILandroid/os/PackageTagsList;)V

    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda12;->f$0:Landroid/location/LocationManagerInternal$LocationPackageTagsListener;

    .line 18
    iget v1, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda12;->f$1:I

    .line 20
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda12;->f$2:Landroid/os/PackageTagsList;

    .line 22
    invoke-interface {v0, v1, p0}, Landroid/location/LocationManagerInternal$LocationPackageTagsListener;->onLocationPackageTagsChanged(ILandroid/os/PackageTagsList;)V

    .line 25
    return-void

    .line 26
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda12;->f$0:Landroid/location/LocationManagerInternal$LocationPackageTagsListener;

    .line 28
    iget v1, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda12;->f$1:I

    .line 30
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda12;->f$2:Landroid/os/PackageTagsList;

    .line 32
    invoke-interface {v0, v1, p0}, Landroid/location/LocationManagerInternal$LocationPackageTagsListener;->onLocationPackageTagsChanged(ILandroid/os/PackageTagsList;)V

    .line 35
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
