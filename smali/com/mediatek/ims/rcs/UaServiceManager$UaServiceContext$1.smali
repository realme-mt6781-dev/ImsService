.class Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;
.super Lcom/mediatek/ims/rcsua/ImsEventCallback;
.source "UaServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final ccFeature:Ljava/lang/String;

.field final synthetic this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)V
    .locals 1
    .param p1, "this$1"    # Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 562
    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-direct {p0}, Lcom/mediatek/ims/rcsua/ImsEventCallback;-><init>()V

    .line 677
    const-string v0, "+g.gsma.callcomposer"

    iput-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;->ccFeature:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onDeregStart(I)V
    .locals 4
    .param p1, "mode"    # I

    .line 660
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v0, v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->access$000(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]RCS IMS event onDeregStart >> mode["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$100(Lcom/mediatek/ims/rcs/UaServiceManager;Ljava/lang/String;)V

    .line 661
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->access$200(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    .line 662
    .local v1, "callback":Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    invoke-virtual {v1}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v2

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v2, v2, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$300(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/os/Handler;

    move-result-object v2

    .line 663
    .local v2, "hdlr":Landroid/os/Handler;
    :goto_1
    new-instance v3, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1$7;

    invoke-direct {v3, p0, v1, p1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1$7;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 669
    .end local v1    # "callback":Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    .end local v2    # "hdlr":Landroid/os/Handler;
    goto :goto_0

    .line 670
    :cond_1
    return-void
.end method

.method public onDeregistered(I)V
    .locals 4
    .param p1, "mode"    # I

    .line 614
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v0, v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->access$000(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]RCS IMS event onDeregistered >> mode["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$100(Lcom/mediatek/ims/rcs/UaServiceManager;Ljava/lang/String;)V

    .line 615
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->access$200(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    .line 616
    .local v1, "callback":Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    invoke-virtual {v1}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v2

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v2, v2, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$300(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/os/Handler;

    move-result-object v2

    .line 617
    .local v2, "hdlr":Landroid/os/Handler;
    :goto_1
    new-instance v3, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1$4;

    invoke-direct {v3, p0, v1, p1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1$4;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 623
    .end local v1    # "callback":Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    .end local v2    # "hdlr":Landroid/os/Handler;
    goto :goto_0

    .line 624
    :cond_1
    return-void
.end method

.method public onDeregistering(I)V
    .locals 4
    .param p1, "mode"    # I

    .line 600
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v0, v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->access$000(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]RCS IMS event onDeregistering >> mode["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$100(Lcom/mediatek/ims/rcs/UaServiceManager;Ljava/lang/String;)V

    .line 601
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->access$200(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    .line 602
    .local v1, "callback":Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    invoke-virtual {v1}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v2

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v2, v2, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$300(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/os/Handler;

    move-result-object v2

    .line 603
    .local v2, "hdlr":Landroid/os/Handler;
    :goto_1
    new-instance v3, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1$3;

    invoke-direct {v3, p0, v1, p1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1$3;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 609
    .end local v1    # "callback":Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    .end local v2    # "hdlr":Landroid/os/Handler;
    goto :goto_0

    .line 610
    :cond_1
    return-void
.end method

.method public onRegistered(I)V
    .locals 5
    .param p1, "mode"    # I

    .line 579
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v0, v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->access$000(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]RCS IMS event onRegistered >> mode["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$100(Lcom/mediatek/ims/rcs/UaServiceManager;Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->access$400(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->getCapabilities()Lcom/mediatek/ims/rcsua/Capability;

    move-result-object v0

    .line 581
    .local v0, "capabilities":Lcom/mediatek/ims/rcsua/Capability;
    if-eqz v0, :cond_0

    .line 582
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->setCapabilities(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 583
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->access$200(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    .line 584
    .local v2, "callback":Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    invoke-virtual {v2}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v3

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v3, v3, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v3}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$300(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/os/Handler;

    move-result-object v3

    .line 585
    .local v3, "hdlr":Landroid/os/Handler;
    :goto_1
    new-instance v4, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1$2;

    invoke-direct {v4, p0, v2, p1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1$2;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 595
    .end local v2    # "callback":Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    .end local v3    # "hdlr":Landroid/os/Handler;
    goto :goto_0

    .line 596
    :cond_2
    return-void
.end method

.method public onRegistering(I)V
    .locals 4
    .param p1, "mode"    # I

    .line 565
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v0, v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->access$000(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]RCS IMS event onRegistering >> mode["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$100(Lcom/mediatek/ims/rcs/UaServiceManager;Ljava/lang/String;)V

    .line 566
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->access$200(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    .line 567
    .local v1, "callback":Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    invoke-virtual {v1}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v2

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v2, v2, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$300(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/os/Handler;

    move-result-object v2

    .line 568
    .local v2, "hdlr":Landroid/os/Handler;
    :goto_1
    new-instance v3, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1$1;

    invoke-direct {v3, p0, v1, p1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1$1;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 574
    .end local v1    # "callback":Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    .end local v2    # "hdlr":Landroid/os/Handler;
    goto :goto_0

    .line 575
    :cond_1
    return-void
.end method

.method public onReregistered(I)V
    .locals 5
    .param p1, "mode"    # I

    .line 628
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v0, v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->access$000(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]RCS IMS event onReregistered >> mode["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$100(Lcom/mediatek/ims/rcs/UaServiceManager;Ljava/lang/String;)V

    .line 629
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->access$200(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    .line 630
    .local v1, "callback":Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    invoke-virtual {v1}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v2

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v2, v2, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$300(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/os/Handler;

    move-result-object v2

    .line 631
    .local v2, "hdlr":Landroid/os/Handler;
    :goto_1
    new-instance v3, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1$5;

    invoke-direct {v3, p0, v1, p1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1$5;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 637
    .end local v1    # "callback":Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    .end local v2    # "hdlr":Landroid/os/Handler;
    goto :goto_0

    .line 640
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->access$400(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->getCapabilities()Lcom/mediatek/ims/rcsua/Capability;

    move-result-object v0

    .line 641
    .local v0, "newCap":Lcom/mediatek/ims/rcsua/Capability;
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->access$500(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Lcom/mediatek/ims/rcsua/Capability;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/rcsua/Capability;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz v0, :cond_6

    .line 642
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->access$500(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Lcom/mediatek/ims/rcsua/Capability;

    move-result-object v1

    const-string v2, "+g.gsma.callcomposer"

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/rcsua/Capability;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/rcsua/Capability;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 643
    invoke-static {v1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->access$500(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Lcom/mediatek/ims/rcsua/Capability;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/rcsua/Capability;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/rcsua/Capability;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 644
    :cond_3
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->access$200(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    .line 645
    .local v2, "callback":Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    invoke-virtual {v2}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v3

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v3, v3, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v3}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$300(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/os/Handler;

    move-result-object v3

    .line 646
    .local v3, "hdlr":Landroid/os/Handler;
    :goto_3
    new-instance v4, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1$6;

    invoke-direct {v4, p0, v2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1$6;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 652
    .end local v2    # "callback":Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    .end local v3    # "hdlr":Landroid/os/Handler;
    goto :goto_2

    .line 654
    :cond_5
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->setCapabilities(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 656
    :cond_6
    return-void
.end method

.method public onVopsIndication(I)V
    .locals 3
    .param p1, "vops"    # I

    .line 674
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v0, v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RCS IMS event onVopsIndication >> vops["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$100(Lcom/mediatek/ims/rcs/UaServiceManager;Ljava/lang/String;)V

    .line 675
    return-void
.end method
